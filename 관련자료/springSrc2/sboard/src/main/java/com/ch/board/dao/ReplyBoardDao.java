package com.ch.board.dao;
import java.util.List;
import com.ch.board.model.ReplyBoard;
public interface ReplyBoardDao {
	List<ReplyBoard> list(int bno);
	int insert(ReplyBoard rb);
	int delete(int rno);
	void update(ReplyBoard rb);

}