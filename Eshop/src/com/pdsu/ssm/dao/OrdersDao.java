package com.pdsu.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pdsu.ssm.bean.Orders;
import com.pdsu.ssm.bean.ordersItem;

public interface OrdersDao {
	//购买，订单增加一条
	public int purchase(@Param("orders") Orders orders);
	public List<Orders> AllOrders();
	//生成订单项
	public int insertItem(ordersItem ordersItem);
}
