package com.cc.controller;

import com.cc.pojo.User;
import com.cc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/toLogin")
    public String toLoginUser(Model model,
                              HttpServletRequest request
                              ) {
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            System.out.println(username+"  "+password);
            User user =new User();
            user.setUsername(username);
            user.setPassword(password);
            User users = userService.userLogin(user);
            if (users.getId() > 0) {
//            model.addAttribute("user", users);
                model.addAttribute("user", users);
                return "userMain";
            }
        } catch (Exception e) {
            model.addAttribute("error","Wrong username or password!");
            return "redirect:/";
        }
        return "redirect:/";
    }

    @ResponseBody
    @RequestMapping("/toLogintest")
    public String userLogin(String name,String pwd) {
        String msg = "Wrong username or password!";
        //模拟数据库中存在数据
        if ((name != null) && (pwd != null)) {
            //        从数据库检索是否存在该用户
            User user = new User();
            user.setUsername(name);
            user.setPassword(pwd);
            try {
                User users = userService.userLogin(user);
                if (users.getUsername().equals(name) && users.getPassword().equals(pwd)) {
                    msg = "Login Success";
                }
                return msg;
            }catch (Exception e){}
            return msg; //g
        }
        return msg;
    }

    @RequestMapping("/userBuy")
    public String userBuyCard(Model model,int id) throws ParseException {
        User user = userService.queryUserById(id);
        System.out.println(user);
        model.addAttribute("user",user );
        return "userMall";
    }
    @RequestMapping("/userMianPage")
    public String userMianPage(Model model,int id) throws ParseException {
        User user = userService.queryUserById(id);
        System.out.println(user);
        model.addAttribute("user",user );
        return "userMain";
    }
//    跳转注册页面
    @RequestMapping("/toUserRegister")
    public String toAddPaper() {
        return "register";
    }
    //注册
    @RequestMapping("/userRegister")
    public String registerUser(User user) throws ParseException {
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String date = sp.format(new Date());
        user.setBegintime(date);
        user.setEndtime(date);
        user.setRemainday(0);
        userService.userRegister(user);
        return "redirect:/user/toLogin";
    }
}
