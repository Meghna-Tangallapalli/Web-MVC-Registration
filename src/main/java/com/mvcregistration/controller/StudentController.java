package com.mvcregistration.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvcregistration.entity.Student;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@GetMapping("/form")
	public String loadForm(Model model) {
		model.addAttribute("student", new Student());
		return "index";
				
	}

	@PostMapping("/saveStudent")
	public String register(Model model, Student student) {
		
		String name = student.getName();
		String txtMsg = name + " Your Registration Completed Successfully!! ";
		model.addAttribute("msg", txtMsg);
		return "success";
		
	}
}
