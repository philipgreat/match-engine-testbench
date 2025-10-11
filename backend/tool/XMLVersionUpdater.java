import org.w3c.dom.Document;
import org.w3c.dom.Element;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import java.io.StringReader;
import java.io.StringWriter;
import org.xml.sax.InputSource;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.charset.StandardCharsets;


import javax.xml.stream.*;
import javax.xml.stream.events.*;
import java.io.*;
import java.util.Iterator;

//public class XMLVersionUpdater {
//
//    public static void main(String[] args) {
//        String filePath = "../models/main.xml";; // 替换为你的 XML 文件路径
//        updateVersion(filePath);
//    }
//
//    public static void updateVersion(String filePath) {
//        try {
//            // 创建 XMLInputFactory 和 XMLOutputFactory
//            XMLInputFactory inputFactory = XMLInputFactory.newInstance();
//            XMLOutputFactory outputFactory = XMLOutputFactory.newInstance();
//
//            // 创建 XMLStreamReader 和 XMLStreamWriter
//            XMLStreamReader reader = inputFactory.createXMLStreamReader(new FileInputStream(filePath));
//            XMLStreamWriter writer = outputFactory.createXMLStreamWriter(new FileOutputStream(filePath + ".tmp")); // 写入临时文件
//
//            // 逐行处理 XML
//            while (reader.hasNext()) {
//                int eventType = reader.next();
//
//                switch (eventType) {
//                    case XMLStreamConstants.START_ELEMENT:
//                        // 处理开始标签
//                        writer.writeStartElement(reader.getLocalName());
//
//                        // 处理属性
//                        for (int i = 0; i < reader.getAttributeCount(); i++) {
//                            String attrName = reader.getAttributeLocalName(i);
//                            String attrValue = reader.getAttributeValue(i);
//
//                            // 如果是 version 属性，增加其值
//                            if ("version".equals(attrName)) {
//                                int newVersion = Integer.parseInt(attrValue) + 1;
//                                attrValue = String.valueOf(newVersion);
//                            }
//
//                            writer.writeAttribute(attrName, attrValue);
//                        }
//                        break;
//
//                    case XMLStreamConstants.END_ELEMENT:
//                        // 处理结束标签
//                        writer.writeEndElement();
//                        break;
//
//                    case XMLStreamConstants.CHARACTERS:
//                        // 处理文本内容
//                        writer.writeCharacters(reader.getText());
//                        break;
//
//                    case XMLStreamConstants.START_DOCUMENT:
//                        // 处理文档开始
//                        writer.writeStartDocument(reader.getEncoding(), reader.getVersion());
//                        break;
//
//                    case XMLStreamConstants.END_DOCUMENT:
//                        // 处理文档结束
//                        writer.writeEndDocument();
//                        break;
//
//                    default:
//                        // 其他事件类型（如注释、处理指令等）
//                        break;
//                }
//            }
//
//            // 关闭流
//            reader.close();
//            writer.close();
//
//            // 用临时文件替换原始文件
//            File originalFile = new File(filePath);
//            File tempFile = new File(filePath + ".tmp");
//            if (originalFile.delete() && tempFile.renameTo(originalFile)) {
//                System.out.println("version 更新成功！");
//            } else {
//                System.out.println("文件替换失败！");
//            }
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//}



public class XMLVersionUpdater {
    public static void main(String[] args) {


        String filePath = "../models/main.xml";

        try {
            String xmlContent = new String(Files.readAllBytes(Paths.get(filePath)));
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(new InputSource(new StringReader(xmlContent)));

            // Get the root element
            Element rootElement = document.getDocumentElement();

            // Update the version attribute
            String currentVersionStr = rootElement.getAttribute("version");
            int currentVersion = Integer.parseInt(currentVersionStr);

            String from=String.format("version=\"%d\"",currentVersion);
            String to=String.format("version=\"%s\"",currentVersion+1);

            Files.write(Paths.get(filePath),
                    xmlContent.replaceFirst(from,to)
                            .getBytes(StandardCharsets.UTF_8));

            System.out.println(currentVersion+1);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
