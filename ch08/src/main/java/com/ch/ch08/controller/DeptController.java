package com.ch.ch08.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.ch08.model.Dept;
import com.ch.ch08.service.DeptService;
@Controller
public class DeptController {
	@Autowired
	private DeptService ds;
	@RequestMapping("deptList")
	public String deptList(Model model) {
		List<Dept> list = ds.list();
		model.addAttribute("list", list);
		return "deptList";
	}
	@RequestMapping("deptInsertForm")
	public String deptInsertForm() {
		return "deptInsertForm";
	}
	@RequestMapping("deptnoChk")
	public String deptnoChk(int deptno, Model model) {
		Dept dept = ds.select(deptno);
		String msg = "";
		if (dept==null) msg = "사용가능한 부서코드입니다";
		else msg = "이미 사용중이니 다른 코드를 사용하세요";
		model.addAttribute("msg", msg);
		return "deptnoChk";
	}
	@RequestMapping("deptInsert")
	public String deptInsert(Dept dept, Model model) {
		int result = ds.insert(dept);
		model.addAttribute("result",result);
		return "deptInsert";
	}
	@RequestMapping("delete")
	public String delete(int deptno, Model model) {
		int result = ds.delete(deptno);
		model.addAttribute("result", result);
		return "delete";
	}
	@RequestMapping("updateForm")
	public String updateForm(int deptno, Model model) {
		Dept dept = ds.select(deptno);
		model.addAttribute("dept", dept);
		return "updateForm";
	}
	@RequestMapping("deptUpdate")
	public String deptUpdate(Dept dept, Model model) {
		int result = ds.update(dept);
		model.addAttribute("result", result);
		return "deptUpdate";
	}
}



