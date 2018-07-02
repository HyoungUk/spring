package com.project.together.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.together.board.TBoard;

@Repository
public class TBoardDaoImpl implements TBoardDao {
	@Autowired
	private SqlSessionTemplate sst;

	// -------------------- 페이징 -----------------------
	public int getTotal(TBoard tboard) {
		return sst.selectOne("tboardns.getTotal", tboard);
	}
	// -------------------- 게시글 목록 -----------------------
	public List<TBoard> getList(TBoard tboard) {
		return sst.selectList("tboardns.list", tboard);
	}
	// -------------------- 게시글 입력 -----------------------
	public int insert(TBoard tboard) {
		return sst.insert("tboardns.insert", tboard);
	}
	// -------------------- select -----------------------
	public TBoard select(int t_num) {
		return sst.selectOne("tboardns.select", t_num);
	}
	public void selectUpdate(int t_num) {
		sst.update("tboardns.selectUpdate", t_num);
	}
	// -------------------- 게시글 삭제 -----------------------
	public int delete(int num) {
		return sst.update("tboardns.delete", num);
	}
	// -------------------- updateRe -----------------------
	public void updateRe(TBoard tboard) {
		sst.update("tboardns.updateRe", tboard);
	}
	public int getMaxNum() {
		return sst.selectOne("tboardns.getMaxNum");
	}
	public void updateRe_step(TBoard tboard) {
		sst.update("tboardns.updateRe_step", tboard);
	}
	public void updateReadCount(int t_num) {
		sst.update("tboardns.updateReadCount", t_num);
	}
	public int update(TBoard tboard) {
		return sst.update("tboardns.update", tboard);
	}
}