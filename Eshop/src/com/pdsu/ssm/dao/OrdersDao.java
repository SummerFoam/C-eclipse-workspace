package com.pdsu.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pdsu.ssm.bean.Orders;
import com.pdsu.ssm.bean.ordersItem;

public interface OrdersDao {
	//���򣬶�������һ��
	public int purchase(@Param("orders") Orders orders);
	public List<Orders> AllOrders();
	//���ɶ�����
	public int insertItem(ordersItem ordersItem);
}
