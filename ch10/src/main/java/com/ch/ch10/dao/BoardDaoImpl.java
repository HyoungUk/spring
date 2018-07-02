package com.ch.ch10.dao;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.ch10.model.Board;
@Repository
public class BoardDaoImpl implements BoardDao {
	@Autowired
	private SqlSessionTemplate sst;
	public int total() {
		return sst.selectOne("boardns.total");
	}
	//public List<Board> getList(int startRow, int endRow) {
	public List<Board> getList(Board board ) {
//		HashMap<String,Integer> hm=new HashMap<String,Integer>();
//		hm.put("startRow", startRow);
//		hm.put("endRow", endRow);
		return sst.selectList("boardns.list", board);
	}
	public void updateReadCount(int num) {
		sst.update("boardns.updateReadCount",num);
	}
	public Board select(int num) {
		return sst.selectOne("boardns.select", num);
	}
	@Override
	public int insert(Board board) {
		return sst.insert("boardns.insert", board);
	}
}


