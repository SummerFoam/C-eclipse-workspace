package com.pdsu.ssm.bean;

import java.util.Set;

public class Orders {
	private int orderId;
	private int customerId;
	//��ѯ��Ҫӳ��˿ͺͶ���һ�Զ�
	//private Customer customer;
	//��Ʒ�Ͷ�����Զ�
	private Set<Goods> goods;
	
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	//	public Customer getCustomer() {
//		return customer;
//	}
//	public void setCustomer(Customer customer) {
//		this.customer = customer;
//	}
	public Set<Goods> getGoods() {
		return goods;
	}
	public void setGoods(Set<Goods> goods) {
		this.goods = goods;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
}
