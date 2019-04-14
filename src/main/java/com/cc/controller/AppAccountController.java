package com.cc.controller;

import com.cc.pojo.AppAccount;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/appAccount")
public class AppAccountController {

    @RequestMapping("/index")
    public String index(Model model){
        List<AppAccount> l=new ArrayList<>();
        AppAccount appAccount= new AppAccount(1,"小米","lll");
        AppAccount appAccount2= new AppAccount(2,"大米","222");
        l.add(appAccount);
        l.add(appAccount2);

        model.addAttribute("appAccounts",l);
        return "appCount/index";
    }
}

