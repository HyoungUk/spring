package com.project.together.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MbDaoImpl implements MbDao{
	@Autowired
	private SqlSessionTemplate sst;

	public int join(Member member) {
		return sst.insert("memberns.join", member);
	}
	public Member login(String id) {
		return sst.selectOne("memberns.login", id);
	}
	public Member select(int mb_num) {
		return sst.selectOne("memberns.select", mb_num);
	}
	public int update(Member member) {
		return sst.update("memberns.update", member);
	}
	public int delete(String id) {
		return sst.update("memberns.delete", id);
	}
	public void hostupdate(Member member) {
		sst.update("memberns.hostupdate", member);
	}
}
