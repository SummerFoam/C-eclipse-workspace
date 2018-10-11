package com.pdsu.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pdsu.ssm.bean.Orders;
import com.pdsu.ssm.bean.ordersItem;
import com.pdsu.ssm.dao.OrdersDao;

@Service
public class OrdersService {
	@Autowired
	private OrdersDao ordersDao;
	public int purchase(Orders orders) {
		return ordersDao.purchase(orders);
	}
	
	public List<Orders> AllOrders(){
		return ordersDao.AllOrders();
	}
	
	public int insertItem(ordersItem ordersItem) {
		return ordersDao.insertItem(ordersItem);
	}
}
