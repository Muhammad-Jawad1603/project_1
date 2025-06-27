package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@RestController
public class FrontendApplication {

    public static void main(String[] args) {
        SpringApplication.run(FrontendApplication.class, args);
    }

    @GetMapping("/")
    public String index() {
        RestTemplate rest = new RestTemplate();
        String backendResponse = rest.getForObject("http://backend-service.local:8080/hello", String.class);
        return "Frontend received: " + backendResponse;
    }
}
