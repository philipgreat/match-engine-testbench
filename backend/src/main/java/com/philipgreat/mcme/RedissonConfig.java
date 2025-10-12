package com.philipgreat.mcme;

import java.sql.Driver;

import javax.sql.DataSource;

import org.redisson.Redisson;
import org.redisson.api.RedissonClient;

import org.redisson.config.Config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.SimpleDriverDataSource;

import jakarta.annotation.PreDestroy;

@Configuration
public class RedissonConfig {
    private RedissonClient redissonClient;
    @PreDestroy
    public void shutdownRedisson() {
        if (redissonClient != null) {
            redissonClient.shutdown();
            System.out.println("Redisson client shutdown.");
        }
    }
    @Bean
    public RedissonClient redissonClient() {
        Config config = new Config();
        config.useSingleServer()
                .setConnectionPoolSize(1)  // 限制最大连接数为 10
                .setConnectionMinimumIdleSize(1)  // 最小空闲连接数
                .setAddress("redis://127.0.0.1:6379");
        //config.us
        redissonClient = Redisson.create(config);
        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            System.out.println("Shutting down Redisson...");
            redissonClient.shutdown();
        }));


        return redissonClient;
    }

    @Bean
    public DataSource dataSource() {
        SimpleDriverDataSource dataSource = new SimpleDriverDataSource();

        dataSource.setDriverClass(org.sqlite.JDBC.class);
        dataSource.setUrl("jdbc:sqlite:./employe-service-001.db");
        dataSource.setUsername("");
        dataSource.setPassword("");

        return dataSource;
    }
}