package com.cc.controller;

import com.cc.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")

public class UserController {

    @RequestMapping("/login")
    public String login(User user, HttpSession session){
//        数据库检查

//        将用户信息存储到会话当中
        session.setAttribute("SESSION_USER",user);

        System.out.println("login...");
        return "user";
    }



}
