package com.ch.iBatis1.service;
import com.ch.iBatis1.model.Member;
public interface MemberService {
	Member select(String id);
	int insert(Member member);

}