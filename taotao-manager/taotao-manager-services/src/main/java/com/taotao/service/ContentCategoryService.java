package com.taotao.service;

import java.util.List;

import com.taotao.common.pojo.EUTreeNode;
import com.taotao.common.pojo.TaotaoResult;
import com.taotao.pojo.TbContentCategory;

public interface ContentCategoryService {
	//内容列表查询
	List<EUTreeNode> getCategoryList(long parentId);
	//插入节点
	TaotaoResult insertContentCategory(long parentId,String name);
	//删除节点
	String deleteCntentCategory(long id);
	//根据父节点查找子节点
	List<TbContentCategory> selectChildren(long id);
	//更新节点
	int updateContentCategory(long id,String name);
}
