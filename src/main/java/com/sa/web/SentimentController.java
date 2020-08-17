package com.sa.web;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

@CrossOrigin(origins = "*")
@RestController
public class SentimentController {


    @GetMapping("/hello")
    public String  sayHello() {
    	return "Bonjour Aymen From JAVA !" ;
    }

    @GetMapping("/testHealth")
    public void testHealth() {
    }
}


