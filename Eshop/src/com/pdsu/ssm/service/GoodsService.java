package com.pdsu.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pdsu.ssm.bean.Goods;
import com.pdsu.ssm.dao.GoodsDao;

@Service
public class GoodsService {
	@Autowired
	private GoodsDao goodsDao;
	
	public List<Goods> findAll() {
		return goodsDao.findAll();
	}
	
	public boolean updateGoods(Goods goods) {
		return goodsDao.updateGoods(goods);
	}
	
	public Goods findById(Integer goodsId) {
		return goodsDao.findById(goodsId);
	}
	
	public int deleteGoods(Goods goods) {
		return goodsDao.deleteGoods(goods);
	}
	
	public int addGoods(Goods goods) {
		return goodsDao.addGoods(goods);
	}
}

