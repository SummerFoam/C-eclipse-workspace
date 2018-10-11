package com.pdsu.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pdsu.ssm.oneTomanyBean.Classes;
import com.pdsu.ssm.service.ClassesService1;

@Controller
@RequestMapping(value="/oneTomany")
public class ClassesAction1 {
	@Autowired
	private ClassesService1 classesService1;
	
	@RequestMapping(value="/getClasses")
	public String getClasses(Integer cid) {
		Classes c=classesService1.getClasses(cid);
		System.out.println(c);
		if(c!=null) {
			return "page/getClassInfo";
		}else {
			return "page/error";
		}
	}
}
