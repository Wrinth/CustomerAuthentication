package com.customerauthentication;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.customerauthentication.mapper")  // Scan All Custom MyBatis Mapper
public class CustomerAuthenticationApplication {

    public static void main(String[] args) {
        SpringApplication.run(CustomerAuthenticationApplication.class, args);
    }
}
