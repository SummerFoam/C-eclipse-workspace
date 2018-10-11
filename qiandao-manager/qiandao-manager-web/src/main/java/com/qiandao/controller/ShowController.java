package com.qiandao.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShowController {
	
	@RequestMapping("/index")
	public String showIndex() {
		return "index";
	}
	
	//返回二维码页面
	@RequestMapping("/code")
	public String showCode(Model model) {
		long time=new Date().getTime()/1000;
		model.addAttribute("time",time);
		return "code";
	}
	
}
