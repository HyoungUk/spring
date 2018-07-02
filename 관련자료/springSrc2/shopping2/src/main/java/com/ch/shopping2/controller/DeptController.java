package com.ch.shopping2.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.shopping2.model.Dept;
import com.ch.shopping2.service.ItemService;
@Controller
public class DeptController {
	@Autowired
	private ItemService is;
	@RequestMapping("deptList")
	public String deptList(Model model) {
		List<Dept> list = is.deptList();
		model.addAttribute("list",list);
		return "dept/deptList";
	}	
	@RequestMapping("deptDetail")
	public String deptDetail(int deptno, Model model) {
		Dept dept = is.deptDetail(deptno);
		model.addAttribute("dept", dept);
		return "dept/deptDetail";
	}
}