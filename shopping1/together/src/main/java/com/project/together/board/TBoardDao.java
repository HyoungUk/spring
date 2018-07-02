package com.project.together.board;

import java.util.List;

import com.project.together.board.TBoard;

public interface TBoardDao {
	int getTotal(TBoard tboard);
	List<TBoard> getList(TBoard tboard);
	int insert(TBoard tboard);
	TBoard select(int t_num);
	void selectUpdate(int t_num);
	int delete(int num);
	void updateRe(TBoard tboard);
	int getMaxNum();
	void updateRe_step(TBoard tboard);
	void updateReadCount(int t_num);
	int update(TBoard tboard);
}