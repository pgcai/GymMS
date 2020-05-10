package com.cc.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cc.pojo.Admin;
import com.cc.pojo.User;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AdminService {
    //查询会员
    List<User> queryUser();
    //新增会员
    int addUser(User user);
    //删除会员
    int deleteUserById(int id);
    //更新会员
    int updateUser(User user);
    //根据id查询一个会员
    User queryUserById(int id);
    //根据姓名查询一个会员
    User queryUserByName(String name);
    //login
    Admin adminLogin(Admin admin);
    //查询用户总数
    int selectTotal();
    //    分页
    List<User> findAll();

    /**
     * 分页查询
     * @param pageNum  当然页
     * @param pageSize 页大小
     * @return 返回PageHelper提供的封装分页参数的PageInfo对象
     */
    PageInfo<User> findByPage(int pageNum, int pageSize);
}
