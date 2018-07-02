package com.ch.board.dao;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.board.model.ReplyBoard;
@Repository
public class ReplyBoardDaoImpl implements ReplyBoardDao {
	@Autowired
	private SqlSessionTemplate sst;
	public List<ReplyBoard> list(int bno) {
		return sst.selectList("rboardns.list", bno);
	}
	public int insert(ReplyBoard rb) {
		return sst.insert("rboardns.insert", rb);
	}
	public int delete(int rno) {
		return sst.update("rboardns.delete", rno);
	}
	public void update(ReplyBoard rb) {
		sst.update("rboardns.update", rb);
	}
}