package edu.scdx.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import edu.scdx.entity.User;
import edu.scdx.service.UserService;

@Controller
public class CommonController {
    @Autowired
    private UserService userService;
    
    @RequestMapping("/index.do")
    public String getIndex(Model model,HttpSession session){
    	String uname = "kiana";
    	User getUser = userService.findUserByName(uname);
    	model.addAttribute("user1", getUser);
        return "index";
    }
    
    @RequestMapping("/register.do")
    public String getRegister(Model model,HttpSession session){
        return "/member/default/register";
    }
    
    @RequestMapping("/login.do")
    public String getLogin (Model model,HttpSession session){
        return "/member/default/login";
    }
    
    @RequestMapping("/logout.do")
    public String getLogout (HttpSession session){
    	session.invalidate();
        return "index";
    }
}
