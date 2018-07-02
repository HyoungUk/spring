package com.ch.board.service;
import java.util.List;
import com.ch.board.model.ReplyBoard;
public interface ReplyBoardService {
	List<ReplyBoard> list(int bno);
	int insert(ReplyBoard rb);
	int delete(int rno);
	void update(ReplyBoard rb);

}