package com.ch.myBatis.service;
import java.util.List;
import com.ch.myBatis.model.Emp;
public interface EmpService {
	List<Emp> list(int deptno);
	Emp select(int empno);
	List<Emp> listAll();
	int update(Emp emp);
	int insert(Emp emp);
	int delete(int empno);
	List<Emp> empList();

}