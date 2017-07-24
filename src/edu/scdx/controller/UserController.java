package edu.scdx.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.scdx.common.util.JsonUtil;
import edu.scdx.entity.User;
import edu.scdx.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    /**
     * 杩欎釜鏄繑鍥為〉闈�
     * @param model
     * @return
     */
    @RequestMapping("/list.do")
    public String getUsers(Model model,HttpSession session){
    	List<User> users = userService.getAll();
        model.addAttribute("list",users);
        return "list";
    }
    
    
    @RequestMapping("/register.json")
    public String insertUser(Model model,HttpServletResponse response,HttpSession session,String uname,String pw,String cp){
    	User getUser = userService.findUserByName(uname);
    	if(getUser != null) {
    		//用户名重复
    		return "/member/default/register";
    	}else {
    		User user = new User();
        	user.setUname(uname);
        	user.setPw(pw);
        	
    		userService.addUser(user);    	
        	session.setAttribute("user",user);
        	return "index";
    	}
    	
    }
    
    @RequestMapping("/login.json")
    public String getUser(Model model,HttpServletResponse response,HttpSession session,String uname,String pw,String cp){
    	User user = new User();
    	user.setUname(uname);
    	user.setPw(pw);
    	User getUser = userService.findUserByName(uname);
    	System.out.println(getUser);
    	if(getUser != null && getUser.getPw().equals(pw) ) {
    		session.setAttribute("user",getUser);
        	return "index";
    	}else {
    		//输入密码错误
    		System.out.println("输入密码错误");
    		return "/member/default/login";
    	}
    	
    }
    
    
}
