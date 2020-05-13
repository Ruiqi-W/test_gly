package com.zh.news.service;

import com.zh.news.po.User;

public interface UserService {

	User findUserById(int userId);

	void add(User user2);

	User findUserNameByNameAndPwd(User user);


}
