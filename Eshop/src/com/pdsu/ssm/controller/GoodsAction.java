package com.pdsu.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pdsu.ssm.bean.Goods;
import com.pdsu.ssm.service.GoodsService;

@Controller
@RequestMapping(value="/goods")
public class GoodsAction {
	@Autowired
	private GoodsService goodsService;
	@RequestMapping(value="/findAll")
	public ModelAndView findAll() {
		List<Goods> list = goodsService.findAll();
		Map model=new HashMap<>();
		model.put("list", list);
		ModelAndView mv=new ModelAndView("/page/findAll",model);
		return mv;
	}
	
	@RequestMapping(value="toupdate",method=RequestMethod.GET)
	public ModelAndView toupdate(Integer goodsId) {
		Goods goods=goodsService.findById(goodsId);
		ModelAndView mv=new ModelAndView("page/update");
		//»ØÏÔÊý¾Ý
		mv.addObject("goodsId", goodsId);
		mv.addObject("goodsName",goods.getGoodsName());
		mv.addObject("price", goods.getPrice());
		return mv;
	}
	
	@RequestMapping(value="update")
	public String updateGoods(Goods goods) {
		boolean b = goodsService.updateGoods(goods);
		if(b) {
			return "redirect:/goods/findAll";
		}else {
			return "page/update";
		}
	}
	
	@RequestMapping(value="/delete")
	public String deleteGoods(Goods goods) {
		int i = goodsService.deleteGoods(goods);
		if(i>0) {
			return "redirect:/goods/findAll";
		}else {
			return "page/update";
		}
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addGoods(Goods goods) {
		int i = goodsService.addGoods(goods);
		System.out.println(i);
		if(i>0) {
			return "redirect:/goods/findAll";
		}else {
			return "page/add";
		}
	}
}
