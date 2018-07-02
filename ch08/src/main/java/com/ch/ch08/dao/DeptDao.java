package com.ch.ch08.dao;
import java.util.List;
import com.ch.ch08.model.Dept;
public interface DeptDao {
	List<Dept> list();
	Dept select(int deptno);
	int insert(Dept dept);
	int delete(int deptno);
	int update(Dept dept);

}