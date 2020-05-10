package com.cc.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cc.pojo.Admin;
import com.cc.pojo.User;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface AdminMapper{
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
    @Select("select * from gymms.user")
    @Results({
            // 用户信息，只要指定id列与属性的映射关系，其他列会自动封装（属性与列一致）
            @Result(property = "id", column = "id"),
            // 信息
            @Result(property = "id", column = "id"),
            @Result(property = "username", column = "username"),
            @Result(property = "password", column = "password"),
            @Result(property = "name", column = "name"),
            @Result(property = "sex", column = "sex"),
            @Result(property = "telephone", column = "telephone"),
            @Result(property = "age", column = "age"),
            @Result(property = "begintime", column = "begintime"),
            @Result(property = "endtime", column = "endtime"),
            @Result(property = "remainday", column = "remainday")
    })
    List<User> findAll();
}
