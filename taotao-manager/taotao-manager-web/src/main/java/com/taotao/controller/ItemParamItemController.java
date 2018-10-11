package com.taotao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.taotao.service.ItemParamItemService;

/**
 * 展示商品规格参数
 * @author zhangaihua
 *
 */
@Controller
public class ItemParamItemController {
	@Autowired
	private ItemParamItemService itemParamItemService;
	@RequestMapping("/showitem/{itemId}")
	public String showItemParam(@PathVariable long itemId,Model model) {
		String string=itemParamItemService.getItemParamItemId(itemId);
		model.addAttribute("itemParam", string);
		return "item";
	}
}
