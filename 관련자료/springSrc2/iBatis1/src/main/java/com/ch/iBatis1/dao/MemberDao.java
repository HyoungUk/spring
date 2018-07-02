package com.ch.iBatis1.dao;
import com.ch.iBatis1.model.Member;
public interface MemberDao {
	Member select(String id);
	int insert(Member member);

}