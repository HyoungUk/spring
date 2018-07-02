package com.project.together.board_no;

import java.util.List;

import com.project.together.board_no.TBoard_no;

public interface TBoard_no_Service {

	int getTotal(TBoard_no tboard_no);

	List<TBoard_no> getList(TBoard_no tboard_no);

	int getMaxNum();

	int insert_no(TBoard_no tboard_no);

	void updateReadCount(int n_num);

	TBoard_no select(int n_num);

	int update_no(TBoard_no tboard_no);

	int delete_no(int num);
}
