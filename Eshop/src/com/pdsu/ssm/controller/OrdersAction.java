package com.pdsu.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pdsu.ssm.bean.Orders;
import com.pdsu.ssm.bean.ordersItem;
import com.pdsu.ssm.service.OrdersService;

@Controller
@RequestMapping(value="/orders")
public class OrdersAction {
	@Autowired
	private OrdersService ordersService;
	
	@RequestMapping(value="/purchase")
	public String purchase(Orders orders,HttpServletRequest request,@RequestParam(value="goodsId") Integer goodsId) {
		//接收页面传过来的商品id
//		System.out.println(goodsId);
//		购买，生成订单表
		int i = ordersService.purchase(orders);
//		System.out.println(i);
//		生成订单id
//		System.out.println(orders.getOrderId());
//		订单id，商品id添加到订单项表
		ordersItem odItem=new ordersItem();
		odItem.setGoodsId(goodsId);
		odItem.setOrderId(orders.getOrderId());
		odItem.setCount(3);
		int insertItem=ordersService.insertItem(odItem);
		System.out.println(insertItem);
		if(insertItem>0) {
			return "redirect:/orders/allOrders";
		}else {
			return "page/findAll";
		}
	}
	
	@RequestMapping(value="/allOrders")
	public ModelAndView allOrders() {
		List<Orders> list = ordersService.AllOrders();
		Map model=new HashMap();
		model.put("list", list);
		ModelAndView mv=new ModelAndView("page/allOrders",model);
		return mv;
	}

}
