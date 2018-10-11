package com.taotao.controller;

import java.util.List;

import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.taotao.common.pojo.EUTreeNode;
import com.taotao.common.pojo.TaotaoResult;
import com.taotao.pojo.TbContentCategory;
import com.taotao.service.ContentCategoryService;
/**
 * 内容分类
 * @author zhangaihua
 *
 */
@Controller
@RequestMapping("/content/category")
public class ContCategoryController {
	@Autowired
	private ContentCategoryService contentCategoryService;
	
	@RequestMapping("/list")
	@ResponseBody
	public List<EUTreeNode> getContentCatList(@RequestParam(value="id",defaultValue="0") long parentId){
		List<EUTreeNode> list=contentCategoryService.getCategoryList(parentId);
		return list;
	}
	
	@RequestMapping("/create")
	@ResponseBody
	public TaotaoResult createContentCategory(long parentId,String name) {
		TaotaoResult result = contentCategoryService.insertContentCategory(parentId, name);
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public String deleteContentCategory(long id) {
		String result = contentCategoryService.deleteCntentCategory(id);
		return result;
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public int updateContegory(long id,String name) {
		int result = contentCategoryService.updateContentCategory(id,name);
		return result;
	}
}
