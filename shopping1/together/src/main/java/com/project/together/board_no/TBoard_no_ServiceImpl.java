package com.project.together.board_no;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TBoard_no_ServiceImpl implements TBoard_no_Service {
	@Autowired
	private TBoard_no_Dao tbd;

	public int getTotal(TBoard_no tboard_no) {
		return tbd.getTotal(tboard_no);
	}

	public List<TBoard_no> getList(TBoard_no tboard_no) {
		return tbd.getList(tboard_no);
	}

	public int getMaxNum() {
		return tbd.getMaxNum();
	}

	public int insert_no(TBoard_no tboard_no) {
		return tbd.insert_no(tboard_no);
	}

	public void updateReadCount(int n_num) {
		tbd.updateReadCount(n_num);
	}

	public TBoard_no select(int n_num) {
		return tbd.select(n_num);
	}

	public int update_no(TBoard_no tboard_no) {
		return tbd.update_no(tboard_no);
	}

	public int delete_no(int num) {
		return tbd.delete_no(num);
	}
}
