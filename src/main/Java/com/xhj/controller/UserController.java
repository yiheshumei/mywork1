package com.xhj.controller;

import com.xhj.pojo.User;
import com.xhj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/selectAll")
    public ModelAndView selectAll() {
        System.out.println("分支");
        List<User> users = userService.selectAll();
        // 新建时加页面
        ModelAndView modelAndView = new ModelAndView("/index.jsp");
        // 在modelAndView中存users到页面中
        modelAndView.addObject("users",users);
        return modelAndView;
    }

    @RequestMapping("/selectByName")
    public ModelAndView selectByName(String name) {
        ModelAndView modelAndView = new ModelAndView("main.jsp");
        List<User> users = userService.selectByName(name);
        modelAndView.addObject("users",users);
        return modelAndView;
    }


    @RequestMapping("/delete")
    public ModelAndView delete(@RequestParam("id") int id) {
//        System.out.println("id:"+id);
        int count = userService.delete(id);
        if(count>0){
            System.out.println("删除成功");
            return new ModelAndView("/selectByName");
        }else {
            System.out.println("删除失败");
            return new ModelAndView("/main.jsp");
        }
    }

    @RequestMapping("/insert")
    public ModelAndView insert(User user) {
        int count = userService.insert(user);
        if (count>0) {
            return new ModelAndView("/selectByName");
        }
        return selectAll();
    }

    @RequestMapping("/tiaozhuanupdate")
    public ModelAndView tiaozhuanupdate(int id,String name,int age) {
        // 新建时加页面
        ModelAndView modelAndView = new ModelAndView("/update.jsp");
        // 在modelAndView中存users到页面中
        modelAndView.addObject("id",id);
        modelAndView.addObject("name",name);
        modelAndView.addObject("age",age);
        return modelAndView;
    }

    @RequestMapping("/update")
    public ModelAndView update(int id,String name,int age) {
        User user = new User(id,name,age);
        int count = userService.update(user);
        if (count>0) {
            return new ModelAndView("/selectByName");
        }

        return selectAll();
    }


}
