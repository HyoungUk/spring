package com.ch.iBatis1.dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;
import com.ch.iBatis1.model.Member;
@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlMapClientTemplate st;
	public Member select(String id) {
		Member member = null;
		try{ member = (Member) 
				st.queryForObject("select",id);	
		}catch(Exception e) { 
			System.out.println(e.getMessage());
			System.out.println("st = "+ st);
		}
		return member;
	}
	public int insert(Member member) {
		int result = 0;
		try { st.insert("insert", member);
			result = 1;
		}catch(Exception e) { System.out.println(e.getMessage());}
		return result;
	}
	public int update(Member member) {
		int result = 0;
		try { result = st.update("update", member);
		}catch(Exception e) { System.out.println(e.getMessage());}
		return result;
	}
	public int delete(String id) {
		int result = 0;
		try { result = st.delete("delete", id);
		}catch(Exception e) { System.out.println(e.getMessage());}
		return result;
	}
}