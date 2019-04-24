package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.pojo.Person;

@RestController
@RequestMapping("/person")
public class PersonInfoController {
	
	

	@RequestMapping("/getInfo")
	public Person getListOfPersons() {

		System.out.println("im running");
		return new Person().setId(100).setFistName("Test").setLastName("user").setEmail("testUser@gmail.com").setAge(25);

	}

}
