package com.xdf.service.impl;

import org.apache.log4j.Logger;

import com.xdf.bean.Easybuy_User;
import com.xdf.dao.UserDao;
import com.xdf.dao.impl.UserDaoImpl;
import com.xdf.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao dao = new UserDaoImpl();

	Logger log = Logger.getLogger(UserServiceImpl.class);

	/**
	 * 注册新用户
	 */
	@Override
	public void register(Easybuy_User user) {
		int row = dao.add(user);
		if (row > 0) {
			log.debug("用户注册成功！");
		} else {
			log.debug("用户注册失败！");
		}
	}

	/**
	 * 登录
	 */
	@Override
	public Easybuy_User login(String userName, String password) {
		Easybuy_User user = dao.login(userName, password);
		if (user == null) {
			log.debug("用户登录失败！");
			return null;
		} else {
			log.debug("用户登录成功！");
			return user;
		}
	}

}
