package com.xdf.service;

import com.xdf.bean.Easybuy_User;

public interface UserService {

	public void register(Easybuy_User user);

	public Easybuy_User login(String userName, String password);

}
