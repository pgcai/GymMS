package com.cc.service;

import com.cc.dao.AdminMapper;
import com.cc.pojo.Admin;
import com.cc.pojo.User;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

public class AdminServiceImpl implements AdminService {
    private AdminMapper adminMapper;
    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }
    public List<User> queryUser() {
        return adminMapper.queryUser();
    }
    public int addUser(User user) {
        return adminMapper.addUser(user);
    }
    public int deleteUserById(int id) {
        return adminMapper.deleteUserById(id);
    }
    public int updateUser(User user) {
        return adminMapper.updateUser(user);
    }
    public User queryUserById(int id) { return adminMapper.queryUserById(id); }
    public User queryUserByName(String name) { return adminMapper.queryUserByName(name); }
    public Admin adminLogin(Admin admin) {
        return adminMapper.adminLogin(admin);
    }
    public int selectTotal() {
        return adminMapper.selectTotal();
    }
    public List<User> findAll() {
        return adminMapper.findAll();
    }
    public PageInfo<User> findByPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<User> list = adminMapper.findAll();
        PageInfo<User> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }
}
