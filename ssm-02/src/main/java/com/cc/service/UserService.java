package com.cc.service;

import com.cc.pojo.User;

import java.util.Date;

public interface UserService {
    //    查询到期时间
    Date queryDateById(int id);
    //修改账号密码
    int updateNP(User user);
    //login
    User userLogin(User user);
    //通过id查询
    User queryUserById(int id);
    //会员注册
    int userRegister(User user);
}
