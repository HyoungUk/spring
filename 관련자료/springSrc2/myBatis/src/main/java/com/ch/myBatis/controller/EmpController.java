package com.ch.myBatis.controller;
import java.sql.Date;
import java.text.DateFormat;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.myBatis.model.Dept;
import com.ch.myBatis.model.Emp;
import com.ch.myBatis.service.DeptService;
import com.ch.myBatis.service.EmpService;
@Controller
public class EmpController {
	@Autowired
	private EmpService es;
	@Autowired
	private DeptService ds;
	@RequestMapping("empList")
	public String empList(int deptno, Model model) {
		List<Emp> list = es.list(deptno);
		Dept dept = ds.select(deptno);
		model.addAttribute("list", list);
		model.addAttribute("dept", dept);
		return "emp/empList";
	}
	@RequestMapping("empView")
	public String empView(int empno, Model model) {
		Emp emp = es.select(empno);
		model.addAttribute("emp", emp);
		return "emp/empView";
	}
	@RequestMapping("empUpdateForm")
	public String empUpdateForm(int empno, Model model) {
		Emp emp = es.select(empno);
		List<Dept> list = ds.list();
		List<Emp> listAll = es.listAll();
		model.addAttribute("emp", emp);
		model.addAttribute("deptList", list);
		model.addAttribute("empList", listAll);
		return "emp/empUpdateForm";
	}
	@RequestMapping("empUpdate")
	public String empUpdate(Emp emp, Model model) {
		int result = es.update(emp); 
		model.addAttribute("result", result);
		model.addAttribute("deptno", emp.getDeptno());
		return "emp/empUpdate";
	}
	@RequestMapping("empInsertForm")
	public String empInsertForm(Model model) {
		List<Dept> list = ds.list();
		List<Emp> listAll = es.listAll();
		model.addAttribute("deptList", list);
		model.addAttribute("empList", listAll);
		return "emp/empInsertForm";
	}
	@RequestMapping("empInsert")
	public String empInsert(Emp emp, Model model) {
		int result = es.insert(emp);
		model.addAttribute("result", result);
		model.addAttribute("deptno", emp.getDeptno());
		return "emp/empInsert";
	}
	@RequestMapping("empnoChk")
	public String empnoChk(int empno, Model model) {
		Emp emp = es.select(empno);
		String msg = "";
		if (emp==null) msg = "사용가능한 사번입니다";
		else msg = "딴거 알아보슈";
		model.addAttribute("msg", msg);
		return "emp/empnoChk";
	}
	@RequestMapping("empDelete")
	public String empDelete(int empno,int deptno, Model model) {
		int result = es.delete(empno);
		model.addAttribute("result", result);
		model.addAttribute("deptno", deptno);
		return "emp/empDelete";
	}
	@RequestMapping("empAll")
	public String empAll(Model model) {
		List<Emp> empList = es.empList();
		model.addAttribute("empList",empList);
		return "emp/empAll";
	}
}