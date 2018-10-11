package com.pdsu.ss.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pdsu.ss.bean.User;
import com.pdsu.ss.service.UserService;

@RequestMapping("/user")
@Controller
public class UserController {
	@Autowired
	private UserService service;
	public UserController() {
		System.out.println("UserController对象创建了");
	}
	@RequestMapping(value="/testList")
	public ModelAndView getList() throws SQLException {
		ModelAndView mv=new ModelAndView("success");
		mv.addObject("list", service.getList());
		return mv;
	}
	@RequestMapping("/testPojo")
	public String testPojo(User user) {
		System.out.println(user);
		return "success";
	}
}
