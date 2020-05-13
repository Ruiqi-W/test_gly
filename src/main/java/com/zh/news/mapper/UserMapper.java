package com.zh.news.mapper;

import com.zh.news.po.User;

public interface UserMapper {
    public User findUserById(int userId);

	public void add(User user2);

	public User findUserNameByNameAndPwd(User user);
}
