package com.ch.board.dao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ch.board.model.Board;
@Repository
public class BoardDaoImpl implements BoardDao {
	@Autowired
	private SqlSessionTemplate sst;
	/*public List<Board> list(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return sst.selectList("boardns.list", map);
	}*/
/*	public int getTotal() {
		return sst.selectOne("boardns.getTotal");
	}*/
	public int getTotal(Board board) {
		return sst.selectOne("boardns.getTotal", board);
	}
	public int insert(Board board) {
		return sst.insert("boardns.insert", board);
	}
	public Board select(int num) {
		return sst.selectOne("boardns.select", num);
	}
	public void updateReadCount(int num) {
		sst.update("boardns.updateReadCount", num);
	}
	public int delete(int num) {
		return sst.update("boardns.delete", num);
	}
	public List<Board> list(Board board) {
		return sst.selectList("boardns.list", board);
	}
	public int update(Board board) {
		return sst.update("boardns.update", board);
	}
	public int getNewNum() {
		return sst.selectOne("boardns.getNewNum");
	}
	public void re_stepUpdate(Board board) {
		sst.update("boardns.re_stepUpdate",board);
	}
}