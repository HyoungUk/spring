package com.project.together.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.together.board.TBoardDao;
import com.project.together.board.TBoard;

@Service
public class TBoardServiceImpl implements TBoardService {
	@Autowired
	private TBoardDao tbd;
	// ---------------페이징
	public int getTotal(TBoard tboard) {
		return tbd.getTotal(tboard);
	}
	// ---------------게시물목록
	public List<TBoard> getList(TBoard tboard) {
		return tbd.getList(tboard);
	}
	// ---------------게시물 작성
	public int insert(TBoard tboard) {
		return tbd.insert(tboard);
	}
	// ---------------게시물 상세조회
	public TBoard select(int t_num) {
		return tbd.select(t_num);
	}
	// ---------------생성될 신규 글,답글 번호
	public int getMaxNum() {
		return tbd.getMaxNum();
	}
	// ---------------게시물 조회 횟수 증가
	public void updateReadCount(int t_num) {
		tbd.updateReadCount(t_num);
	}
	// ---------------게시물 업데이트
	public int update(TBoard tboard) {
		return tbd.update(tboard);
	}

	public void selectUpdate(int t_num) {
		tbd.selectUpdate(t_num);
	}
	// ---------------게시물 삭제
	public int delete(int num) {
		return tbd.delete(num);
	}
	// ---------------리플 업데이트 
	public void updateRe(TBoard tboard) {
		tbd.updateRe(tboard);
	}
	// ---------------게시물목록
	public void updateRe_step(TBoard tboard) {
		tbd.updateRe_step(tboard);
	}
}