package com.pdsu.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pdsu.ssm.bean.ordersItem;
import com.pdsu.ssm.service.GoodsService;
import com.pdsu.ssm.service.ordersItemService;

@Controller
@RequestMapping(value="/orderItems")
public class OrdersItemAction {
	@Autowired
	private ordersItemService ordersItemService;
	@RequestMapping(value="/allItems")
	public ModelAndView AllItems() {
		List<ordersItem> list=ordersItemService.allItems();
		Map model=new HashMap<>();
		model.put("list", list);
		ModelAndView mv=new ModelAndView("page/allItems",model);
		return mv;
	}
	
	
}
