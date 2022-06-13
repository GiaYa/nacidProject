package com.example.nacidtest;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.example.nacidtest.mapper")
public class NacidTestApplication {

    public static void main(String[] args) {
        SpringApplication.run(NacidTestApplication.class, args);
    }
}
