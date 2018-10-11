package com.pdsu.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pdsu.ssm.manyTomanyBean.Users;
import com.pdsu.ssm.service.userService;

@Controller
@RequestMapping(value="/manyTomany")
public class userAction {
	@Autowired
	private userService userService;
	@RequestMapping(value="/getUsers")
	public String getUsers(Integer uid) {
		List<Users> list=userService.getUsers(uid);
		for(Users users:list) {
			System.out.println(users);
		}
		
		if(list!=null) {
			return "page/getClassInfo";
		}else {
			return "page/error";
		}
	}
}
