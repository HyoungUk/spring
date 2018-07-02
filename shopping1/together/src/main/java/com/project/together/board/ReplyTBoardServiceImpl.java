package com.project.together.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyTBoardServiceImpl implements ReplyTBoardService {
	@Autowired
	private ReplyTBoardDao rbd;

	public List<ReplyTBoard> list(int t_num) {
		return rbd.list(t_num);
	}
	public void insert(ReplyTBoard rb) {
		rbd.insert(rb);	
	}
	public void delete(int rno) {
		rbd.delete(rno);	
	}
	public void update(ReplyTBoard rb) {
		rbd.update(rb);	
	}
}