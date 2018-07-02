package com.project.together.member;

public interface MbDao {
	public int join(Member member);
	public Member login(String id);
	public Member select(int mb_num);
	public int update(Member member);
	public int delete(String id);
	public void hostupdate(Member member);
}
