package com.ch.ch10.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ch.ch10.dao.BoardDao;
import com.ch.ch10.model.Board;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao bd;
	public int total() {
		return bd.total();
	}
	// public List<Board> getList(int startRow, int endRow) {
	public List<Board> getList(Board board) {
		return bd.getList(board);
		// return bd.getList(startRow, endRow);
	}
	public void updateReadCount(int num) {
		bd.updateReadCount(num);		
	}
	public Board select(int num) {
		return bd.select(num);
	}
	@Override
	public int insert(Board board) {
		return bd.insert(board);
	}
}