package com.cc.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Admin {
    private int id;
    private String username;
    private String password;
    private String name;
    private String telephone;
}
