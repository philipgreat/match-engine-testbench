package com.philipgreat.mcme;

import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.philipgreat.matchenginemanagementservice.Q;

import io.teaql.data.Entity;
import io.teaql.data.EntityStatus;
import io.teaql.data.SmartList;
import io.teaql.data.UserContext;


import cn.hutool.core.text.NamingCase;

public class Main {
    protected static String fetchFKsSQL() {
        return "SELECT\n    tc.constraint_name AS name,\n    tc.table_name AS tableName,\n    kcu.column_name AS columnName,\n    ccu.table_name AS fTableName,\n    ccu.column_name AS fColumnName\nFROM\n    information_schema.table_constraints AS tc\n    JOIN information_schema.key_column_usage AS kcu\n      ON tc.constraint_name = kcu.constraint_name\n    JOIN information_schema.constraint_column_usage AS ccu\n      ON ccu.constraint_name = tc.constraint_name\nWHERE\n    tc.constraint_type = 'FOREIGN KEY'\n";
    }
    public static void main(String[] args) {
        System.out.println(NamingCase.toUnderlineCase("createTime"));

        //ConfigurableApplicationContext context = SpringApplication.run(Main.class, args);

        //System.out.println(fetchFKsSQL());

        CustomUserContext ctx =  CustomUserContext.forCommonApp();
//
        Q.platforms().executeForList(ctx).forEach(platform -> {

            System.out.println(platform.getDisplayName());

        });
        CustomUserContext.shutdown();
        



        //PureAppResolver.inst().ensureSchema(ctx);

//        SmartList<LogEntry> logEntries = Q.logEntries().executeForList(ctx);
//        ctx.info("{}",logEntries.size());
//        logEntries.forEach(logEntry -> {
//            System.out.println(logEntry.getCreateTime());
//
//        });
//        for(int i=0;i<100000;i++){
//            new LogEntry().updateTitle("发现问题").updateType("消息").updateContent("xiangxi")
//                    .updateMerchant(Merchant.refer(1L)).save(ctx);
//
//
//        }
        //ctx.putInStore("key","value");

//        Stream<LogEntry> stream = PureAppResolver.inst().testReturnQueryStreamWithContext(ctx);
//
//        stream.forEach(logEntry -> {
//            System.out.println(logEntry.getCreateTime());
//
//        });

        //CustomStreamEnhancer.shutdown();
//        Stream<LogEntry> stream = Q.logEntries().executeForStream(ctx);
//
//        try {
//            stream.limit(10).forEach(logEntry -> {
//                ctx.info("In execute {}",logEntry.getCreateTime());
//            });
//        } finally {
//            ctx.info("ensure for close");
//            stream.close(); // 确保流被关闭
//        }

//        AtomicInteger counter=new AtomicInteger();
//
//        try ( Stream<LogEntry> stream = Q.logEntries().executeForStream(ctx)) {
//            stream.map(logEntry -> {
//                counter.incrementAndGet();
//                return logEntry.getId();
//            }).forEach(System.out::println);
//        }
//        ctx.info("counter {} ",counter.intValue());

//        LogEntry log = Q.logEntries().execute(ctx);
//        ctx.info("old id {}",log.getId());
//        log.set$status(EntityStatus.NEW);
//        log.setId(null);
//
//        Entity entity=log.save(ctx);
//        ctx.info("new id {} with value {}",entity.getId(),entity);


        ctx.info("runs here~");





    }
}
