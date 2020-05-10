package com.cc.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int id;
    private String username;
    private String password;
    private String name;
    private String sex;
    private String telephone;
    private int age;
    private String begintime;
    private String endtime;
    private int remainday;
    private int addday;

    public static void main(String[] args) {
        User u = new User();
        u.getTelephone();
    }
}
