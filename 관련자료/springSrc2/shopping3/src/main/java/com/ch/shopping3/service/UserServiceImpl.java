package com.ch.shopping3.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ch.shopping3.dao.UserDao;
import com.ch.shopping3.model.User;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao ud;
	@Override
	public User loginChk(String userId) {
		return ud.loginChk(userId);
	}
}