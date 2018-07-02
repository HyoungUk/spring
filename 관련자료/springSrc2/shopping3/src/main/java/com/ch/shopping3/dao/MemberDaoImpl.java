package com.ch.shopping3.dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.ch.shopping3.model.Member;
@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private JdbcTemplate jt;
	public Member loginChk(String id) {
		Member member = null;
		try{member = jt.queryForObject(
			"select * from member3 where id=?",
			new BeanPropertyRowMapper<Member>(Member.class),id);			
		}catch(Exception e) {}
		return member;
	}
}