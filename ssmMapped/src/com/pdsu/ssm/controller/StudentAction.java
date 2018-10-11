package com.pdsu.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pdsu.ssm.oneTomanyBean.Student;
import com.pdsu.ssm.service.StudentService;

@Controller
@RequestMapping(value="/manyToone")
public class StudentAction {
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value="/getStudents")
	public String getStudents(Integer sid) {
		Student student=studentService.getStudents(sid); 
		System.out.println(student.getSname());
		System.out.println(student.getClasses());
		if(student!=null) {
			return "page/getClassInfo";
		}else {
			return "page/error";
		}
	}
}
