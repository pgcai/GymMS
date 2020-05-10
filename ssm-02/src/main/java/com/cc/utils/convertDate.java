package com.cc.utils;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class convertDate implements WebBindingInitializer {

    public void initBinder(WebDataBinder webDataBinder) {
        // TODO Auto-generated method stub
        //转换日期
        DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
}
