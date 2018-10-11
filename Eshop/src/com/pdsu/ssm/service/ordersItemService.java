package com.pdsu.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pdsu.ssm.bean.ordersItem;
import com.pdsu.ssm.dao.OrdersItemDao;

@Service
public class ordersItemService {
	@Autowired
	private OrdersItemDao ordersItemDao;
	
	public List<ordersItem> allItems(){
		return ordersItemDao.AllItems();
	}
	
	
}
