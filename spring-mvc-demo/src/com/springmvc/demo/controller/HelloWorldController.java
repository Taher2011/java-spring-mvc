package com.springmvc.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	// need a controller method to show the initial HTML form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}

	// new a controller method to read form data and add data to the model
	@RequestMapping("/processForm")
	public String processForm(@RequestParam("studentName") String name, Model model) {
		// convert the data to all caps
		name = name.toUpperCase();
		// create the message
		String result = "Yo! " + name;
		// add message to the model
		model.addAttribute("message", result);
		return "helloworld";
	}

}
