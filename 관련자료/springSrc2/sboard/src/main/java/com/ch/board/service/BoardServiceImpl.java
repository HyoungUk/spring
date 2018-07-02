package com.ch.board.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ch.board.dao.BoardDao;
import com.ch.board.model.Board;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao bd;
/*	public List<Board> list(int startRow, int endRow) {
		return bd.list(startRow, endRow);
	}*/
/*	public int getTotal() {
		return bd.getTotal();
	}*/
	public int getTotal(Board board) {
		return bd.getTotal(board);
	}
	public int insert(Board board) {
		return bd.insert(board);
	}
	public Board select(int num) {
		return bd.select(num);
	}
	public void updateReadCount(int num) {
		bd.updateReadCount(num);
	}
	public int delete(int num) {
		return bd.delete(num);
	}
	public List<Board> list(Board board) {
		return bd.list(board);
	}
	public int update(Board board) {
		return bd.update(board);
	}
	public int getNewNum() {
		return bd.getNewNum();
	}
	public void re_stepUpdate(Board board) {
		bd.re_stepUpdate(board);
	}
}