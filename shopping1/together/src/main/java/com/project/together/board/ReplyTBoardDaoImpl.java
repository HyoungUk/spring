package com.project.together.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyTBoardDaoImpl implements ReplyTBoardDao {
	@Autowired
	private SqlSessionTemplate sst;

	public List<ReplyTBoard> list(int t_num) {
		return sst.selectList("rboardns.list",t_num);
	}
	public void insert(ReplyTBoard rb) {
		sst.insert("rboardns.insert",rb);
	}
	public void delete(int rno) {
		sst.delete("rboardns.delete",rno);
	}
	public void update(ReplyTBoard rb) {
		sst.update("rboardns.update",rb);
	}
}