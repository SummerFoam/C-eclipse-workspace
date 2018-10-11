package com.pdsu.ssm.bean;
//ÖÐ¼ä±í
public class ordersItem {
	private int goodsId;
	private int orderId;
	private int count;
	
	private Orders m_order;
	private Goods m_goods;
	
	
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Orders getM_order() {
		return m_order;
	}
	public void setM_order(Orders m_order) {
		this.m_order = m_order;
	}
	public Goods getM_goods() {
		return m_goods;
	}
	public void setM_goods(Goods m_goods) {
		this.m_goods = m_goods;
	} 
	
}
