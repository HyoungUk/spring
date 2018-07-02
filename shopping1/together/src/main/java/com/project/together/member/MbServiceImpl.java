package com.project.together.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MbServiceImpl implements MbService{
	@Autowired
	private MbDao md;

	public int join(Member member) {
		return md.join(member);
	}
	public Member login(String id) {
		return md.login(id);
	}
	public Member select(int mb_num) {
		return md.select(mb_num);
	}
	public int update(Member member) {
		return md.update(member);
	}
	public int delete(String id) {
		return md.delete(id);
	}
	public void hostupdate(Member member) {
		md.hostupdate(member);
	}
}
