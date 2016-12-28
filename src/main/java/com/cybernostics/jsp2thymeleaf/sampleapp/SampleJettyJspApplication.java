package com.cybernostics.jsp2thymeleaf.sampleapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class SampleJettyJspApplication extends SpringBootServletInitializer
{

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application)
    {
        return application.sources(SampleJettyJspApplication.class);
    }

    public static void main(String[] args) throws Exception
    {
        SpringApplication.run(SampleJettyJspApplication.class, args);
    }

}
