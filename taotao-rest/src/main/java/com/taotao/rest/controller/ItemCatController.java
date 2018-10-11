package com.taotao.rest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.taotao.common.utils.JsonUtils;
import com.taotao.rest.pojo.CatResult;
import com.taotao.rest.service.ItemCatService;

/*
 * 商品列表
 */
@Controller
public class ItemCatController {
	@Autowired
	private ItemCatService itemCatService;
	
	//方法一
	//解决乱码
//	@RequestMapping(value="/itemcat/list",produces=MediaType.APPLICATION_JSON_VALUE+";charset=UTF-8")
//	@ResponseBody
//	public String getItemCatList(String callback) {
//		CatResult catResult=itemCatService.getItemCatList();
//		System.out.println(catResult);
//		//把json转换成字符串
//		String json=JsonUtils.objectToJson(catResult);
//		//拼装返回值
//		String result=callback+"("+json+");";
//		return result;
//	}
	
	//方法二
	@RequestMapping("/itemcat/list")
	@ResponseBody
	public Object getItemCatList(String callback) {
		CatResult catResult=itemCatService.getItemCatList();
		MappingJacksonValue mappingJacksonValue=new MappingJacksonValue(catResult);
		mappingJacksonValue.setJsonpFunction(callback);
		return mappingJacksonValue;
	}
	
}