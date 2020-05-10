package com.cc.controller;

import com.cc.pojo.Admin;
import com.cc.pojo.User;
import com.cc.service.AdminService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    @Qualifier("AdminServiceImpl")
    private AdminService adminService;
    
    @RequestMapping("/toAddUser")
    public String toAddPaper() {
        return "register";
    }

    @RequestMapping("/addUser")
    public String addPaper(User user) throws ParseException {
        System.out.println(user);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); // 日期格式
        Date date = dateFormat.parse(user.getBegintime()); // 指定日期
        Calendar cl = Calendar.getInstance();
        cl.setTime(date);
        cl.add(Calendar.DATE, user.getRemainday());
        String temp = "";
        temp = dateFormat.format(cl.getTime());
        user.setEndtime(temp);
        adminService.addUser(user);
        return "redirect:/admin/findByPage";
    }
    @RequestMapping("/toUpdateUser")
    public String toUpdateUser(Model model, int id) {
        User user = adminService.queryUserById(id);
        System.out.println(user);
        model.addAttribute("user",user );
        return "updateUser";
    }

    @RequestMapping("/updateUser")
    public String updateUser(Model model, User user) throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); // 日期格式
        Date date = dateFormat.parse(user.getBegintime()); // 指定日期
        Calendar cl = Calendar.getInstance();
        cl.setTime(date);
        int allday = user.getRemainday()+user.getAddday();
        cl.add(Calendar.DATE, allday);
        String temp = "";
        temp = dateFormat.format(cl.getTime());
        user.setEndtime(temp);
        user.setRemainday(allday);
        adminService.updateUser(user);
        User users = adminService.queryUserById(user.getId());
        model.addAttribute("user", users);
        return "redirect:/admin/findByPage";
    }
    @RequestMapping("/del/{userId}")
    public String deleteBook(@PathVariable("userId") int id) {
        adminService.deleteUserById(id);
        return "redirect:/admin/findByPage";
    }
    @RequestMapping("/toaLogin")
    public String toaLogin() {
        return "/aLogin";
    }
    @RequestMapping("/aLogin")
    public String toLoginUser(Admin admin) {
        System.out.println(admin.getUsername()+admin.getPassword());
        try {
            Admin admins = adminService.adminLogin(admin);
            if (admins.getId() > 0) {
//            model.addAttribute("user", users);
                return "redirect:/admin/findByPage";
            }
        }catch (Exception e){
            return "/aLogin";
        }
        return "/aLogin";
    }
@RequestMapping("/findAll")
public ModelAndView findAll() {
    //1.1 调用service
    List<User> list = adminService.findAll();
    //1.2 返回结果
    ModelAndView mv = new ModelAndView();
    mv.setViewName("order-list");
    mv.addObject("list", list);
    return mv;
}

    @RequestMapping("/findByPage")
    public String findByPage(Model model,
            @RequestParam(defaultValue = "1") int pageNum,
            @RequestParam(defaultValue = "11") int pageSize) {
        PageInfo<User> pageInfo = adminService.findByPage(pageNum, pageSize);
//        PageInfo pageInfo = adminService.findByPage(pageNum, pageSize);
        //1.1 调用service
        //1.2 返回结果
        model.addAttribute("list", pageInfo.getList());
        model.addAttribute("pageInfo", pageInfo);
        return "allUserPage";
    }
    @RequestMapping("/searchUser")
    public String searchUser(Model model, String name) {
        try {
            User user = adminService.queryUserByName(name);
            System.out.println(user);
            model.addAttribute("user", user);
            if (user.getName() == null) {
                return "redirect:/admin/findByPage";
            }
            return "updateUser";
        }catch (Exception e){
            return "redirect:/admin/findByPage";
        }
    }
//    商城
@RequestMapping("/buy")
public String buyCard() throws ParseException {
    return "mall";
}

}
