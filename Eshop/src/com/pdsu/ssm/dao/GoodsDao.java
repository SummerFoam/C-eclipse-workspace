package com.pdsu.ssm.dao;

import java.util.List;

import com.pdsu.ssm.bean.Goods;
import com.pdsu.ssm.bean.Orders;

public interface GoodsDao {
	//查看所有商品
	public List<Goods> findAll();
	//修改
	public boolean updateGoods(Goods goods);
	public Goods findById(Integer goodsId);
	public int deleteGoods(Goods goods);
	public int addGoods(Goods goods);
}
