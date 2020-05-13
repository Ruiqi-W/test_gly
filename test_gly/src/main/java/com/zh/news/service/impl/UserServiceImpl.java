package com.zh.news.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zh.news.mapper.UserMapper;
import com.zh.news.po.User;
import com.zh.news.service.UserService;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
	private UserMapper userMapper;
	@Override
	public User findUserById(int userId) {
		return userMapper.findUserById(userId);
	}
	@Override
	public void add(User user2) {
		userMapper.add(user2);	
	}
	@Override
	public User findUserNameByNameAndPwd(User user) {
		return userMapper.findUserNameByNameAndPwd(user);
	}
}
