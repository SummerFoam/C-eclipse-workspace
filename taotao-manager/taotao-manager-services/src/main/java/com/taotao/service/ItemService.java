package com.taotao.service;

import java.util.List;

import com.taotao.common.pojo.EUDataGridResult;
import com.taotao.common.pojo.EUTreeNode;
import com.taotao.common.pojo.TaotaoResult;
import com.taotao.pojo.TbItem;

public interface ItemService {
	TbItem getItemById(long itemId);
	//分页
	EUDataGridResult getItemList(int page,int rows);
	//商品添加
	TaotaoResult saveItem(TbItem item, String desc, String itemParams) throws Exception;
}
