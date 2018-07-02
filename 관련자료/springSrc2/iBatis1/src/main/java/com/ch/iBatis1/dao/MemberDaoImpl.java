package com.ch.iBatis1.dao;
import java.io.IOException;
import java.io.Reader;
import org.springframework.stereotype.Repository;

import com.ch.iBatis1.model.Member;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
@Repository
public class MemberDaoImpl implements MemberDao {
	private static SqlMapClient sqlMapper;
    static {
	    try {
	      Reader reader = 
	    	  Resources.getResourceAsReader("SqlMapConfig.xml");
	      sqlMapper=SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close(); 
	    } catch (IOException e) {
	      System.out.println("mapper 생성 에러 : "+e.getMessage());
	    }
    }
	public Member select(String id) {
		Member member = null;
		try{ member = (Member) 
				sqlMapper.queryForObject("select",id);	
		}catch(Exception e) { System.out.println(e.getMessage()); }
		return member;
	}
	public int insert(Member member) {
		int result = 0;
		try { sqlMapper.insert("insert", member);
			result = 1;
		}catch(Exception e) { System.out.println(e.getMessage());}
		return result;
	}
}