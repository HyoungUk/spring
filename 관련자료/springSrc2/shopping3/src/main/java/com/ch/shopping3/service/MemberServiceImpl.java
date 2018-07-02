package com.ch.shopping3.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ch.shopping3.dao.MemberDao;
import com.ch.shopping3.model.Member;
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao md;
	public Member loginChk(String id) {
		return md.loginChk(id);
	}
}