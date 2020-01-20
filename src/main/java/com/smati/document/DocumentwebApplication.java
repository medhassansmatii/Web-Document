package com.smati.document;

import java.util.TimeZone;

import javax.annotation.PostConstruct;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DocumentwebApplication {

	public static void main(String[] args) {
		SpringApplication.run(DocumentwebApplication.class, args);
	}

	
	  @PostConstruct
	    void init() {
	        TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
	    }
}
