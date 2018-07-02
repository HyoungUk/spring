package com.ch.iBatis1.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ch.iBatis1.dao.MemberDao;
import com.ch.iBatis1.model.Member;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao md;
	public Member select(String id) {
		return md.select(id);
	}
	public int insert(Member member) {
		return md.insert(member);
	}
}