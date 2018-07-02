package com.ch.myBatis.dao;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.myBatis.model.Dept;
@Repository
public class DeptDaoImpl implements DeptDao {
	@Autowired
	private SqlSessionTemplate sst;
	public List<Dept> list() {
		return  sst.selectList("deptns.list");
	}
	public Dept select(int deptno) {
		return sst.selectOne("deptns.select",deptno);
	}
	public int update(Dept dept) {
		return sst.update("deptns.update",dept);
	}
	public int insert(Dept dept) {
		return sst.insert("deptns.insert", dept);
	}
	public int delete(int deptno) {
		return sst.delete("deptns.delete", deptno);
	}
}