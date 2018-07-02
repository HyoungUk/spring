package com.ch.board.service;
import java.util.List;
import com.ch.board.model.Board;
public interface BoardService {
	// List<Board> list(int startRow, int endRow);
	// int getTotal(); 을 검색으로 변경
	int getTotal(Board board);
	int insert(Board board);
	Board select(int num);
	void updateReadCount(int num);
	int delete(int num);
	List<Board> list(Board board);
	int update(Board board);
	int getNewNum();
	void re_stepUpdate(Board board);

}