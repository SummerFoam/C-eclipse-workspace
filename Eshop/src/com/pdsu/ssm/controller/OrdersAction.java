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
		//����ҳ�洫��������Ʒid
//		System.out.println(goodsId);
//		�������ɶ�����
		int i = ordersService.purchase(orders);
//		System.out.println(i);
//		���ɶ���id
//		System.out.println(orders.getOrderId());
//		����id����Ʒid��ӵ��������
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
