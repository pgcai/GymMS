package com.cc.dao;


import com.cc.pojo.User;

import java.util.Date;

public interface UserMapper {
    //通过id查询
    User queryUserById(int id);
//    查询到期时间
    Date queryDateById(int id);
    //修改账号密码
    int updateNP(User user);
    //login
    User userLogin(User user);
    //会员注册
    int userRegister(User user);
}
