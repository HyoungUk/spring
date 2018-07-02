package com.project.together.board;

import java.util.List;

public interface ReplyTBoardService {
	List<ReplyTBoard> list(int t_num);
	void insert(ReplyTBoard rb);
	void delete(int rno);
	void update(ReplyTBoard rb);
}