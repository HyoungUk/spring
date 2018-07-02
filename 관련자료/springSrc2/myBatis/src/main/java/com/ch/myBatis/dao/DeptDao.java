package com.ch.myBatis.dao;
import java.util.List;

import com.ch.myBatis.model.Dept;
public interface DeptDao {
	List<Dept> list();
	Dept select(int deptno);
	int update(Dept dept);
	int insert(Dept dept);
	int delete(int deptno);

}