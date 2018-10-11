package com.taotao.portal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.taotao.common.pojo.TaotaoResult;
import com.taotao.portal.service.ContentService;

/*
 * 
 * 首页
 */
@Controller
public class IndexController {
	@Autowired
	private ContentService contentServce;
	@RequestMapping("/index")
	public String showIndex(Model model) {
		String adjson = contentServce.getContentList();
		System.out.println(adjson);
		model.addAttribute("ad1", adjson);
		return "index";
	}
	
	@RequestMapping(value="/httpclient/post",method=RequestMethod.POST)
	public String testPost() {
		return "ok";
	}
}
