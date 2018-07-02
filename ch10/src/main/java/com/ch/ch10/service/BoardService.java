package com.ch.ch10.service;
import java.util.List;
import com.ch.ch10.model.Board;
public interface BoardService {
	int total();
	// List<Board> getList(int startRow, int endRow);
	List<Board> getList(Board board);
	void updateReadCount(int num);
	Board select(int num);
	int insert(Board board);

}
