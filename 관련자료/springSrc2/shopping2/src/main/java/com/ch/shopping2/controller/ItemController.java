package com.ch.shopping2.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.shopping2.model.Item;
import com.ch.shopping2.service.ItemService;
@Controller
public class ItemController {
	@Autowired
	private ItemService is;
	@RequestMapping("list")
	public String list(Model model) {
		List<Item> list = is.list();
		model.addAttribute("list", list);
		return "list";
	}
	@RequestMapping("detail")
	public String detail(String itemId, Model model ) {
		Item item = is.select(itemId);
		model.addAttribute("item", item);
		return "detail";
	}
}