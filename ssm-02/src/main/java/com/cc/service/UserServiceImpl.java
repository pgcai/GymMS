package com.cc.service;

import com.cc.dao.UserMapper;
import com.cc.pojo.User;

import java.util.Date;

public class UserServiceImpl implements UserService {
    private UserMapper userMapper;
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }
    public Date queryDateById(int id) {
        return userMapper.queryDateById(id);
    }
    public int updateNP(User user) {
        return userMapper.updateNP(user);
    }
    public User userLogin(User user) {
        return userMapper.userLogin(user);
    }
    public User queryUserById(int id) {
        return userMapper.queryUserById(id);
    }
    public int userRegister(User user) {
        return userMapper.userRegister(user);
    }
}
