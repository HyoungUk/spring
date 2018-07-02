package com.ch.board.dao;
import java.util.List;
import com.ch.board.model.Board;
public interface BoardDao {
	// List<Board> list(int startRow, int endRow);
	// int getTotal();
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