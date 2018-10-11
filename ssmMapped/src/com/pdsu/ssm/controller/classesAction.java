package com.pdsu.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pdsu.ssm.oneTooneBean.Classes;
import com.pdsu.ssm.service.ClassesService;

@Controller
@RequestMapping(value="/class")
public class classesAction {
	@Autowired
	private ClassesService classesService;
	
	@RequestMapping(value="/getClassInfo")
	public String getClassInfo(Integer id) {
		Classes c=classesService.getClassInfo(id);
		System.out.println(c.getName());
		System.out.println(c.getTeacher());
		if(c!=null) {
			return "page/getClassInfo";
		}else {
			return "page/error";
		}
	}
}
