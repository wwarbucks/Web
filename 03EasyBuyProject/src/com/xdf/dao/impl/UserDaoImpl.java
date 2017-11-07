package com.xdf.dao.impl;

import java.io.Serializable;
import java.util.List;

import com.xdf.bean.Easybuy_User;
import com.xdf.dao.UserDao;
import com.xdf.util.BaseDao;
import com.xdf.util.ResultSetUtil;

public class UserDaoImpl extends BaseDao implements UserDao {

	/**
	 * 注册新用户
	 */
	@Override
	public int add(Easybuy_User user) {
		String sql = "INSERT INTO easybuy_user(loginName,userName,`password`,sex,identityCode,email,mobile,`type`) "
				+ "VALUES(?,?,?,?,?,?,?,?)";
		Object[] params = { user.getLoginName(), user.getUserName(),
				user.getPassword(), user.getSex(), user.getIdentityCode(),
				user.getEmail(), user.getMobile(), user.getType() };
		return executeUpdate(sql, params);
	}

	/**
	 * 登录
	 */
	@Override
	public Easybuy_User login(String userName, String password) {
		String sql = "select * from easybuy_user where loginName=? and password=?";
		Object[] params = { userName, password };
		rs = executeQuery(sql, params);
		Easybuy_User user = ResultSetUtil.findOne(rs, Easybuy_User.class);
		return user;
	}

	@Override
	public int delete(Serializable s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Easybuy_User t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Easybuy_User> findAll(Object... objects) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Easybuy_User findOne(Object... objects) {
		// TODO Auto-generated method stub
		return null;
	}

}
