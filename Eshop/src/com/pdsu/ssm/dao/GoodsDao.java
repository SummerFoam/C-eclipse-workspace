package com.pdsu.ssm.dao;

import java.util.List;

import com.pdsu.ssm.bean.Goods;
import com.pdsu.ssm.bean.Orders;

public interface GoodsDao {
	//�鿴������Ʒ
	public List<Goods> findAll();
	//�޸�
	public boolean updateGoods(Goods goods);
	public Goods findById(Integer goodsId);
	public int deleteGoods(Goods goods);
	public int addGoods(Goods goods);
}
