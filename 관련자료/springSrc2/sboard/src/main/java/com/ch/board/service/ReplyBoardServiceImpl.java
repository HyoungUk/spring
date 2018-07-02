package com.ch.board.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ch.board.dao.ReplyBoardDao;
import com.ch.board.model.ReplyBoard;
@Service
public class ReplyBoardServiceImpl implements ReplyBoardService {
	@Autowired
	private ReplyBoardDao rbd;
	public List<ReplyBoard> list(int bno) {
		return rbd.list(bno);
	}
	public int insert(ReplyBoard rb) {
		return rbd.insert(rb);
	}
	public int delete(int rno) {
		return rbd.delete(rno);
	}
	public void update(ReplyBoard rb) {
		rbd.update(rb);
	}
}