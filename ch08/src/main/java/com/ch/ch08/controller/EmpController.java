package com.ch.ch08.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.ch08.model.Dept;
import com.ch.ch08.model.Emp;
import com.ch.ch08.service.DeptService;
import com.ch.ch08.service.EmpService;
@Controller
public class EmpController {
	@Autowired
	private EmpService es;
	@Autowired
	private DeptService ds;
	@RequestMapping("empList")
	public String empList(int deptno, Model model) {
		List<Emp> list = es.list(deptno);
		model.addAttribute("list", list);
		return "emp/empList";
	}
	@RequestMapping("empView")
	public String empView(int empno, Model model) {
		Emp emp = es.select(empno);
		model.addAttribute("emp", emp);
		return "emp/empView";
	}
	@RequestMapping("empInsertForm")
	public String empInsertForm(Model model) {
		List<Dept> deptList = ds.list();
		List<Emp>  empList = es.listAll();
		model.addAttribute("deptList",deptList);
		model.addAttribute("empList", empList);
		return "emp/empInsertForm";
	}
	@RequestMapping("empChk")
	public String empChk(int empno, Model model) {
		Emp emp = es.select(empno);
		String msg = "";
		if (emp==null) msg = "사용 가능한 사번입니다";
		else msg = "이미 있는 사번이니 다른번호 사용하세용";
		model.addAttribute("msg", msg);
		return "emp/empChk";
	}
	@RequestMapping("empInsert")
	public String empInsert(Emp emp, Model model) {
		int result = es.insert(emp);
		model.addAttribute("result", result);
		model.addAttribute("deptno", emp.getDeptno());
		return "emp/empInsert";
	}
	@RequestMapping("empUpdateForm")
	public String empUpdateForm(int empno, Model model) {
		Emp emp = es.select(empno);
		List<Dept> deptList = ds.list();
		List<Emp>  empList = es.listAll();
		model.addAttribute("emp", emp);
		model.addAttribute("deptList", deptList);
		model.addAttribute("empList", empList);
		return "emp/empUpdateForm";
	}
	@RequestMapping("empUpdate")
	public String empUpdate(Emp emp, Model model) {
		int result = es.update(emp);
		model.addAttribute("result", result);
		model.addAttribute("deptno", emp.getDeptno());
		return "emp/empUpdate";
	}
	@RequestMapping("empDelete")
	public String empDelete(int empno, Model model) {
		Emp emp = es.select(empno);
		int result = es.delete(empno);
		model.addAttribute("result", result);
		model.addAttribute("deptno", emp.getDeptno());
		return "emp/empDelete";
	}
	@RequestMapping("empAllList")
	public String empAllList(Model model) {
		List<Emp> list = es.empAllList();
		model.addAttribute("list", list);
		return "emp/empAllList";
	}
}


