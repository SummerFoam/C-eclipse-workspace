package com.taotao.service;

import java.util.List;


import com.taotao.common.pojo.EUTreeNode;
import com.taotao.pojo.TbItemCat;
public interface ItemCatService {
	//商品列目查询
	List<EUTreeNode> getItemCatList(long parentId);
}
