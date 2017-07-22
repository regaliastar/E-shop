package edu.scdx.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class CommonController {
  
    @RequestMapping("/index.do")
    public String getIndex(Model model,HttpSession session){
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
