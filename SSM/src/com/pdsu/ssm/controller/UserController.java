package com.pdsu.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pdsu.ssm.bean.User;
import com.pdsu.ssm.service.UserService;
//相当于action
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService service;
	
	@RequestMapping(value="/getList")
	public ModelAndView getList() {
		ModelAndView mv= new ModelAndView("sccess");
		List<User> list = service.getList();
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping(value="/Regist",method=RequestMethod.POST)
	public String Regist(User user,HttpServletRequest request,RedirectAttributes attribute) {
		int result=service.regist(user);
		if(result == 1) {
			return "pages/user/regist_success";
		}
		else{
			attribute.addFlashAttribute("message", "用户名已存在");
			return "redirect:"+request.getContextPath()+"/pages/user/regist.jsp";
		}
		
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(User user,HttpServletRequest request,HttpSession session,RedirectAttributes attribute) {
		String result="";
		User u=service.login(user);
		if(u!=null) {
			session.setAttribute("user", u);
			return "pages/user/login_success";
		}else {
			attribute.addFlashAttribute("message", "用户不存在");
			return "redirect:"+request.getContextPath()+"/pages/user/login.jsp";
		}
	}
}
