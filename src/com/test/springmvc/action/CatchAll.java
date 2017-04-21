package com.test.springmvc.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.springmvc.bo.Person;
import com.test.springmvc.service.UserService;

@Controller
@RequestMapping("")
public class CatchAll {
	
	@RequestMapping("/index")
	public String hello() {
		System.out.println("index");
		return "index";
	}
	
	@RequestMapping("/helloworld1")
	public String hello1() {
		System.out.println("hello world11");
		return "success";
	}
	
	@RequestMapping("/getAllUser")
	public String getAllUser(){
		System.out.println("getAllUser");		
		return "allUser";
	}
	
	@ResponseBody
	@RequestMapping("/person")
	public Person toPerson(String name,int age) {
		System.out.println("name"+name+" age11"+age);
		Person person = new Person();
		person.setAge(age);
		person.setName(name);
		return person;
	}
}
