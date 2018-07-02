package com.ch.shopping3.dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.ch.shopping3.model.User;
@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	private JdbcTemplate jt;
	public User loginChk(String userId) {
		User user = null;
		try {user = jt.queryForObject(
			"select * from user1 where userId=?",
			new BeanPropertyRowMapper<User>(User.class), userId);
		} catch(Exception e) {  }
		return user;
	}
}