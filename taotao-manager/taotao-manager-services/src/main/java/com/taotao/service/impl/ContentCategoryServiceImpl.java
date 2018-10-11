package com.taotao.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.tools.internal.xjc.model.SymbolSpace;
import com.taotao.common.pojo.EUTreeNode;
import com.taotao.common.pojo.TaotaoResult;
import com.taotao.mapper.TbContentCategoryMapper;
import com.taotao.pojo.TbContentCategory;
import com.taotao.pojo.TbContentCategoryExample;
import com.taotao.pojo.TbContentCategoryExample.Criteria;
import com.taotao.service.ContentCategoryService;

@Service
public class ContentCategoryServiceImpl implements ContentCategoryService{
	@Autowired
	private TbContentCategoryMapper contentCategoryMapper;
	
	@Override
	public List<EUTreeNode> getCategoryList(long parentId) {
		// TODO Auto-generated method stub
		//根据parentId查询节点列表
		TbContentCategoryExample example=new TbContentCategoryExample();
		Criteria criteria=example.createCriteria();
		//执行查询
		List<TbContentCategory> list = contentCategoryMapper.selectByExample(example);
		List<EUTreeNode> resultList=new ArrayList<>();
		for(TbContentCategory tbContentCategor : list) {
			//创建一个节点
			EUTreeNode node=new EUTreeNode();
			node.setId(tbContentCategor.getId());
			node.setText(tbContentCategor.getName());
			node.setState(tbContentCategor.getIsParent()?"closed":"open");
			resultList.add(node);
		}
		return resultList;
	}
	@Override
	public TaotaoResult insertContentCategory(long parentId, String name) {
		// TODO Auto-generated method stub
		//创建一个pojo
		TbContentCategory contentCategory=new TbContentCategory();
		contentCategory.setName(name);
		contentCategory.setIsParent(false);
		//状态：1正常2删除
		contentCategory.setStatus(1);
		contentCategory.setParentId(parentId);
		contentCategory.setSortOrder(1);
		contentCategory.setCreated(new Date());
		contentCategory.setUpdated(new Date());
		//添加记录
		contentCategoryMapper.insert(contentCategory);
		//查看父节点的isParent是否为true，不是就改成true
		TbContentCategory parentCat = contentCategoryMapper.selectByPrimaryKey(parentId);
		//判断是否为true
		if(!parentCat.getIsParent()) {
			parentCat.setIsParent(true);
			//更新节点
			contentCategoryMapper.updateByPrimaryKey(parentCat);
		}
		return TaotaoResult.ok(contentCategory);
	}
	@Override
	public String deleteCntentCategory(long id) {
		// TODO Auto-generated method stub
		List<TbContentCategory> list = contentCategoryMapper.selectChilderen(id);
		System.out.println(list.isEmpty());
		String json_success="{\"key\":\"0\"}";
		String json_error="{\"key\":\"1\"}";
		if(list.isEmpty()) {
			System.out.println(123234);
			//删除
			int i = contentCategoryMapper.deleteByPrimaryKey(id);
			if(i>0) {
				return json_success;
			}else {
				return json_error;
			}
			
		}else {
			return json_error;
		}
		
	}
	@Override
	public  List<TbContentCategory> selectChildren(long id) {
		// TODO Auto-generated method stub
		List<TbContentCategory> list = contentCategoryMapper.selectChilderen(id);
		System.out.println(contentCategoryMapper.selectChilderen(id));
		return list;
	}
	@Override
	public int updateContentCategory(long id,String name) {
		// TODO Auto-generated method stub
		System.out.println(id+"1111111"+name);
		//填充数据的对象
		TbContentCategory contentCategory = contentCategoryMapper.selectByPrimaryKey(id);
		//更新属性
		contentCategory.setName(name);
		int i=contentCategoryMapper.updateContegory(contentCategory);
		return i;
	}
	
	
	
}
