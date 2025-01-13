package com.rs.config;


import org.redisson.Redisson;
import org.redisson.api.RedissonClient;
import org.redisson.config.Config;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Description:
 * @Author: RWG
 * @Date: 2024/12/25:11:35
 */
@Configuration
public class RedissonConfig {

    /**
     * redis地址
     */
    @Value("${spring.redis.host}")
    private String redisHost;

    /**
     * redis端口号
     */
    @Value("${spring.redis.port}")
    private String redisPort;

    /**
     * redis密码
     */
    @Value("${spring.redis.password}")
    private String redisPassword;


    /**
     * redis的数据库编号
     */
    @Value("${spring.redis.database}")
    private Integer redisDatabase;



    @Bean
    public RedissonClient redissonClient() {
        // 创建 Redisson 客户端连接
        Config config = new Config();
        config.useSingleServer()//单机模式
                .setAddress("redis://"+redisHost+":"+redisPort)//redis服务器地址
                .setDatabase(redisDatabase)//指定数据库编号
                .setPassword(redisPassword)//redis密码
                .setConnectionMinimumIdleSize(10)//连接车最小空闲连接数
                .setConnectionPoolSize(50)//连接池最大线程数
                .setIdleConnectionTimeout(60000)//线程超时时间
                .setConnectTimeout(10000)//客户端程序获取redis链接的超时时间
                .setTimeout(10000);//响应超时时间
        return  Redisson.create(config);
    }

}
