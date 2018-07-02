package com.ch.myBatis.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.myBatis.model.Dept;
import com.ch.myBatis.service.DeptService;
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
	@RequestMapping("deptUpdateForm")
	public String deptUpdateForm(int deptno, Model model) {
		Dept dept = ds.select(deptno);
		model.addAttribute("dept", dept);
		return "deptUpdateForm";
	}
	@RequestMapping("deptUpdate")
	public String deptUpdate(Dept dept, Model model) {
		int result = ds.update(dept);
		model.addAttribute("result", result);
		return "deptUpdate";
	}
	@RequestMapping("deptInsertForm") 
	public String deptInsertForm(){
		return "deptInsertForm";
	}
	@RequestMapping("deptChk")
	public String deptChk(int deptno, Model model) {
		String msg = "";
		Dept dept = ds.select(deptno);
		if (dept==null) msg = "사용 가능한 부서코드입니다";
		else msg = "이미 있으니 다른 부서코드들 사용하세요";
		model.addAttribute("msg", msg);
		return "deptChk";
	}
	@RequestMapping("deptInsert")
	public String deptInsert(Dept dept, Model model) {
		int result = ds.insert(dept);
		model.addAttribute("result", result);
		return "deptInsert";
	}
	@RequestMapping("deptDelete")
	public String deptDelete(int deptno, Model model) {
		int result = ds.delete(deptno);
		model.addAttribute("result", result);
		return "deptDelete";
	}
}