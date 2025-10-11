package com.philipgreat.mcme.resultstatusreceiver;

import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.MulticastSocket;
import java.net.NetworkInterface;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

class MessageTool{
    public static String tagName(byte tagBytes[]){
        return getTagName(tagBytes);
    }
    private static String getTagName(byte tag[]){

        int len = 0;
        while (len < tag.length && tag[len] != 0) {
            len++;
        }

        return new String(tag, 0, len, java.nio.charset.StandardCharsets.UTF_8);
    }
}

// --- 消息类型常量 (与 Rust 定义一致) ---
interface MessageConstants {
    byte MSG_TRADE_BROADCAST = 10;
    byte MSG_STATUS_BROADCAST = 11;
    int MESSAGE_TOTAL_SIZE = 50; // 固定包大小
}

// --- 数据结构定义 (Java 版) ---

/**
 * 匹配结果结构 (对应 Rust MatchResult)
 * Total Payload Size: 46 bytes (Index 2 to 47 in 50-byte buffer)
 */
class MatchResult {
    public byte[] instanceTag = new byte[8]; // 8 bytes
    public short productId;                // u16 (2 bytes)
    public long buyOrderId;                 // u64 (8 bytes)
    public long sellOrderId;                // u64 (8 bytes)
    public long price;                      // u64 (8 bytes)
    public int quantity;                   // u32 (4 bytes)
    public int tradeTimeNetwork;           // u32 (4 bytes)
    public int internalMatchTime;          // u32 (4 bytes)

    @Override
    public String toString() {
        return String.format("MatchResult{Tag=%s, PId=%d, BuyID=%d, SellID=%d, Price=%d, Qty=%d, TradeTime=%d}",
                MessageTool.tagName(instanceTag),
                productId, buyOrderId, sellOrderId, price, quantity, tradeTimeNetwork);
    }
}

/**
 * 广播状态结构 (对应 Rust BroadcastStats)
 * Total Payload Size: 42 bytes (Index 2 to 43 in 50-byte buffer)
 */
class BroadcastStats {
    public byte[] instanceTag = new byte[8];    // 8 bytes
    public short productId;                    // u16 (2 bytes)
    public int bidsSize;                       // u32 (4 bytes)
    public int askSize;                        // u32 (4 bytes)
    public int matchedOrders;                  // u32 (4 bytes)
    public int totalReceivedOrders;            // u32 (4 bytes)
    public long startTime;                      // u64 (8 bytes)

    @Override
    public String toString() {
        return String.format("BroadcastStats{Tag=%s, PId=%d, Bids=%d, Asks=%d, Matched=%d, TotalRecv=%d}",

                MessageTool.tagName(instanceTag),
                productId, bidsSize, askSize, matchedOrders, totalReceivedOrders);
    }
}

/**
 * 统一的消息封装
 */
class IncomingEngineMessage {
    public byte messageType;
    public long receiveTimeMs;
    public Object payload;

    public IncomingEngineMessage(byte messageType, Object payload) {
        this.messageType = messageType;
        this.payload = payload;
        this.receiveTimeMs = System.currentTimeMillis();
    }
}

// --- 网络接收线程 (生产者) ---

/**
 * UDP 组播接收线程。
 * 负责接收 50 字节的定长数据包，解析消息类型，并反序列化载荷，然后放入队列。
 */
class MulticastReceiver implements Runnable {
    private final String multicastAddress;
    private final int port;
    private final Queue<IncomingEngineMessage> messageQueue;
    private final AtomicBoolean running = new AtomicBoolean(true);

    public MulticastReceiver(String multicastAddress, int port, Queue<IncomingEngineMessage> queue) {
        this.multicastAddress = multicastAddress;
        this.port = port;
        this.messageQueue = queue;
    }

    public void stopRunning() {
        running.set(false);
    }


    /**
     * 注意：Rust 默认使用 Big Endian (网络字节序) 进行序列化 (to_be_bytes())，
     * Java 的 ByteBuffer 必须设置为 Big Endian 来保证正确反序列化。
     */
    private IncomingEngineMessage deserialize(byte[] data) {
        if (data.length < MessageConstants.MESSAGE_TOTAL_SIZE) {
            System.err.println("Error: Received packet size is too small.");
            return null;
        }

        // 字节缓冲，设置为 Big Endian (网络字节序)
        ByteBuffer buffer = ByteBuffer.wrap(data).order(ByteOrder.BIG_ENDIAN);

        // 1. 忽略 Checksum (buf[0])
        buffer.get();
        // 2. 读取 Message Type (buf[1])
        byte messageType = buffer.get();
        // 3. Payload Start Index is 2

        // 校验 Checksum (如果需要，可在此处实现校验逻辑)
        // byte expectedChecksum = calculateChecksum(data);
        // if (data[0] != expectedChecksum) { /* 校验失败 */ }

        switch (messageType) {
            case MessageConstants.MSG_TRADE_BROADCAST:
                return new IncomingEngineMessage(messageType, deserializeMatchResult(buffer));
            case MessageConstants.MSG_STATUS_BROADCAST:
                return new IncomingEngineMessage(messageType, deserializeBroadcastStats(buffer));
            default:
                System.out.println("Warning: Unknown message type: " + messageType);
                return null;
        }
    }

    private MatchResult deserializeMatchResult(ByteBuffer buffer) {
        MatchResult result = new MatchResult();
        int payloadStart = buffer.position(); // 应该从索引 2 开始

        // 1. Instance Tag (8 bytes)
        buffer.get(result.instanceTag);
        // 2. Product ID (u16)
        result.productId = buffer.getShort();
        // 3. Buy Order ID (u64)
        result.buyOrderId = buffer.getLong();
        // 4. Sell Order ID (u64)
        result.sellOrderId = buffer.getLong();
        // 5. Price (u64)
        result.price = buffer.getLong();
        // 6. Quantity (u32)
        result.quantity = buffer.getInt();
        // 7. Trade Time Network (u32)
        result.tradeTimeNetwork = buffer.getInt();
        // 8. Internal Match Time (u32)
        result.internalMatchTime = buffer.getInt();
        // 此时 position 应该在 2 + 46 = 48 (即 48)

        return result;
    }

    private BroadcastStats deserializeBroadcastStats(ByteBuffer buffer) {
        BroadcastStats stats = new BroadcastStats();
        int payloadStart = buffer.position(); // 应该从索引 2 开始

        // 1. Instance Tag (8 bytes)
        buffer.get(stats.instanceTag);
        // 2. Product ID (u16)
        stats.productId = buffer.getShort();
        // 3. Bids Size (u32)
        stats.bidsSize = buffer.getInt();
        // 4. Ask Size (u32)
        stats.askSize = buffer.getInt();
        // 5. Matched Orders (u32)
        stats.matchedOrders = buffer.getInt();
        // 6. Total Received Orders (u32)
        stats.totalReceivedOrders = buffer.getInt();
        // 7. Start Time (u64)
        stats.startTime = buffer.getLong();
        // 此时 position 应该在 2 + 42 = 44 (即 44)

        return stats;
    }


    @Override
    public void run() {
        try (MulticastSocket socket = new MulticastSocket(port)) {

            socket.setNetworkInterface(NetworkInterface.getByName("en0"));

            InetAddress group = InetAddress.getByName(multicastAddress);
            socket.joinGroup(group);
            socket.setReceiveBufferSize(65536 * 10); // 适当增大接收缓冲区

            byte[] buffer = new byte[MessageConstants.MESSAGE_TOTAL_SIZE];
            DatagramPacket packet = new DatagramPacket(buffer, buffer.length);

            System.out.println("Multicast Receiver started on " + multicastAddress + ":" + port);

            while (running.get()) {
                try {
                    // 阻塞接收数据包
                    socket.receive(packet);

                    // 深度拷贝数据，避免在 deserialize 或队列中被下一个接收操作覆盖
                    byte[] dataCopy = Arrays.copyOf(packet.getData(), packet.getLength());
                    IncomingEngineMessage message = deserialize(dataCopy);

                    if (message != null) {
                        messageQueue.offer(message);
                    }
                } catch (java.net.SocketTimeoutException e) {
                    // 正常退出循环
                } catch (Exception e) {
                    if (running.get()) {
                        System.err.println("Receiver error: " + e.getMessage());
                    }
                }
            }
            socket.leaveGroup(group);
        } catch (Exception e) {
            System.err.println("Fatal Receiver setup error: " + e.getMessage());
        }
        System.out.println("Multicast Receiver stopped.");
    }
}

// --- 消息处理线程 (消费者) ---

/**
 * 消息处理线程。
 * 负责从队列中取出消息并进行业务处理。
 */
class MessageProcessor implements Runnable {
    private final Queue<IncomingEngineMessage> messageQueue;
    private final AtomicBoolean running = new AtomicBoolean(true);

    public MessageProcessor(Queue<IncomingEngineMessage> queue) {
        this.messageQueue = queue;
    }

    public void stopRunning() {
        running.set(false);
    }

    @Override
    public void run() {
        System.out.println("Message Processor started.");
        long processedCount = 0;
        long startTime = System.currentTimeMillis();

        while (running.get()) {
            IncomingEngineMessage message = messageQueue.poll();
            if (message != null) {
                processedCount++;
                processMessage(message);
            } else {
                // 队列为空，短暂休眠或使用更高级的通知机制 (如 Wait/Notify 或 Exchanger)
                try {
                    Thread.sleep(1);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    running.set(false);
                }
            }
        }
        long endTime = System.currentTimeMillis();
        long duration = endTime - startTime;
        System.out.printf("Message Processor stopped. Processed %d messages in %d ms.%n",
                processedCount, duration);
    }

    private void processMessage(IncomingEngineMessage message) {
        // 核心业务处理逻辑
        switch (message.messageType) {
            case MessageConstants.MSG_TRADE_BROADCAST:
                MatchResult result = (MatchResult) message.payload;
                System.out.println("Trade: " + result);
                // 实际应用中：更新价格、计算仓位、触发策略等
                break;
            case MessageConstants.MSG_STATUS_BROADCAST:
                BroadcastStats stats = (BroadcastStats) message.payload;
                System.out.println("Status: " + stats);
                // 实际应用中：显示引擎状态、心跳监测等
                break;
            default:
                // 忽略未知消息
        }
    }
}

// --- 简单测试类 ---

public class EngineClient {
    //239.0.0.2:5001
    private static final String MULTICAST_ADDR = "239.0.0.2"; // 组播地址
    private static final int PORT = 5001; // 端口

    public static void main(String[] args) {
        // 使用 ConcurrentLinkedQueue 作为高并发的无界队列
        Queue<IncomingEngineMessage> messageQueue = new ConcurrentLinkedQueue<>();

        // 1. 创建接收线程 (生产者)
        MulticastReceiver receiver = new MulticastReceiver(MULTICAST_ADDR, PORT, messageQueue);
        Thread receiverThread = new Thread(receiver, "ReceiverThread");

        // 2. 创建处理线程 (消费者)
        MessageProcessor processor = new MessageProcessor(messageQueue);
        Thread processorThread = new Thread(processor, "ProcessorThread");

        // 启动线程
        receiverThread.start();
        processorThread.start();

        System.out.printf("Client started, listening on %s:%d. Waiting for messages...%n", MULTICAST_ADDR, PORT);
        System.out.println("Press Ctrl+C to stop.");

        // 保持主线程运行一段时间，以便接收和处理消息
        try {
            // 运行 30 秒后自动退出 (或等待用户 Ctrl+C)
            Thread.sleep(3000000);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } finally {
            // 优雅停止线程
            System.out.println("\nShutting down...");
            receiver.stopRunning();
            processor.stopRunning();

            // 等待线程结束
            try {
                receiverThread.join(2000);
                processorThread.join(2000);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            System.out.println("Client stopped.");
        }
    }

    // 假设的 Checksum 计算，与 Rust 的 calculate_checksum 保持一致
    // 假设 Rust 使用的是简单的 XOR 校验和，从索引 1 开始计算到数据末尾。
    private static byte calculateChecksum(byte[] data) {
        byte checksum = 0;
        // 从 Message Type (索引 1) 开始计算
        for (int i = 1; i < data.length; i++) {
            checksum ^= data[i];
        }
        return checksum;
    }
}
