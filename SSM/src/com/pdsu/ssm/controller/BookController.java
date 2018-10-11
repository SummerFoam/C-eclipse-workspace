package com.pdsu.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pdsu.ssm.bean.Book;
import com.pdsu.ssm.bean.Page;
import com.pdsu.ssm.service.BookService;
@RequestMapping("/book")
@Controller
public class BookController {
	private static int pageSize=4;
	@Autowired
	private BookService bookservice;
	
//	@RequestMapping(value="/getList",method=RequestMethod.GET)
//	public ModelAndView getList() {
//		ModelAndView mv=new ModelAndView("pages/manager/book_manager");
//		List<Book> list=bookservice.getList();
//		mv.addObject("list", list);
//		return mv;
//	}
	
	@RequestMapping(value="/getList",method=RequestMethod.GET)
	public ModelAndView getList(@RequestParam(value="pageNo",defaultValue="1") String pageNo) {
		ModelAndView mv=new ModelAndView("pages/manager/book_manager");
		Page<Book> page = bookservice.getPageInfo(pageNo, pageSize);
		mv.addObject("page", page);
		return mv;
	}
}
