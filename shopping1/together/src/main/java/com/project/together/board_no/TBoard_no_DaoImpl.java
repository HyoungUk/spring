package com.project.together.board_no;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TBoard_no_DaoImpl implements TBoard_no_Dao {
	@Autowired
	private SqlSessionTemplate sst;

	public int getTotal(TBoard_no tboard_no) {
		return sst.selectOne("tboard_no_ns.getTotal", tboard_no);
	}

	public List<TBoard_no> getList(TBoard_no tboard_no) {
		return sst.selectList("tboard_no_ns.list", tboard_no);
	}

	public int getMaxNum() {
		return sst.selectOne("tboard_no_ns.getMaxNum");
	}

	public int insert_no(TBoard_no tboard_no) {
		return sst.insert("tboard_no_ns.insert_no", tboard_no);
	}

	public void updateReadCount(int n_num) {
		sst.update("tboard_no_ns.updateReadCount", n_num);
	}

	public TBoard_no select(int n_num) {
		return sst.selectOne("tboard_no_ns.select", n_num);
	}

	public int update_no(TBoard_no tboard_no) {
		return sst.update("tboard_no_ns.update_no", tboard_no);
	}

	public int delete_no(int num) {
		return sst.update("tboard_no_ns.delete_no", num);
	}
}
