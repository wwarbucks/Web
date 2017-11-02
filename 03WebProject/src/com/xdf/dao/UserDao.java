package com.xdf.dao;

import com.xdf.bean.Easybuy_User;

public interface UserDao extends CommonDao<Easybuy_User> {

	/**
	 * µÇÂ¼
	 */
	Easybuy_User login(String userName, String password);

}
