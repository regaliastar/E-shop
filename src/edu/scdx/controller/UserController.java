package edu.scdx.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.scdx.common.util.JsonUtil;
import edu.scdx.entity.Address;
import edu.scdx.entity.Product;
import edu.scdx.entity.User;
import edu.scdx.service.ProductService;
import edu.scdx.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
	@Autowired
    private ProductService productService;
	
    
    @RequestMapping("/register.json")
    public String insertUser(Model model,HttpServletResponse response,HttpSession session,String uname,String pw,String cp){
    	User getUser = userService.findUserByName(uname);
    	if(getUser != null) {
    		//用户名重复
    		model.addAttribute("wrongMsg","用户名已存在");
    		return "/member/default/register";
    	}else {
    		User user = new User();
        	user.setUname(uname);
        	user.setPw(pw);
        	
    		userService.addUser(user);    
    		User getuser = userService.findUserByName(user.getUname());
        	session.setAttribute("user",getuser);
        	
        	return "redirect:/index.do "; 
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
    		
    		return "redirect:/index.do "; 
    	}else {
    		//输入密码错误
    		System.out.println("输入密码错误");
    		model.addAttribute("wrongMsg","输入密码错误");
    		return "/member/default/login";
    	}
    	
    }
    
    
    @RequestMapping("/setaddr.json")
    public String getAddr(Model model,HttpServletResponse response,HttpSession session,String addr,String zip,String sendName,String sendTel){
    	Address address = new Address();
    	User u = (User) session.getAttribute("user");
    	int i=userService.findAddressNum(u.getUid());
    	//System.out.println(i);
    	if (i==0) address.setCurrent(1);
    	else  address.setCurrent(0);
    	address.setAddr(addr);
    	address.setZip(zip);
    	address.setSendName(sendName);
    	address.setSendTel(sendTel);
    	address.setUid(u.getUid());
    	//System.out.println(addr);
    	//System.out.println(zip);
    	//System.out.println(sendName);
    	//System.out.println(sendTel);
    	userService.addAddress(address);   
        Address ca=new Address();
        ca=userService.findCurrentAddress(u.getUid());
        model.addAttribute("ca",ca);
    	return "/member/purchase";
    	}
    
    
    @RequestMapping("/choose_address.json")
    public String getChoose_address (Model model,HttpSession session){
    	User user = (User) session.getAttribute("user");
    	List<Address> addrs = userService.getAddress(user.getUid());
    	model.addAttribute("addrs", addrs);
    
        return "/member/choose_address";
    }

    @RequestMapping("/set_CurrentAddress.do")
    public String set_CurrentAddress(Model model,HttpSession session,Integer Aid){
    	User u = (User) session.getAttribute("user");    
        userService.setCurrentAddress_0(u.getUid());
        userService.setCurrentAddress(Aid, u.getUid());
        Address ca=new Address();
       ca=userService.findCurrentAddress(u.getUid());
       model.addAttribute("ca",ca);
        return "/member/purchase";
    }
    
    @RequestMapping("/delete_address.do")
    public String delete_address (Model model,HttpSession session,int Aid){
    	userService.deleteAddress(Aid);
        return "redirect:/user/choose_address.json";
}
    
    @RequestMapping("/updateaddr.do")
    public String updateAddr(Model model,HttpServletResponse response,HttpSession session,int aid,String addr,String zip,String sendName,String sendTel){
    	Address address = new Address();
    	Address address_1= new Address();
    	address_1=userService.findAddressbyAid(aid);
    	User u = (User) session.getAttribute("user");
    	address.setCurrent(address_1.getCurrent());
    	address.setUid(address_1.getUid());
    	address.setAddr(addr);
    	address.setZip(zip);
    	address.setSendName(sendName);
    	address.setSendTel(sendTel);
    	address.setUid(u.getUid());
    	address.setAid(aid);
    	System.out.println(address);
    	userService.updateAddress(address);
    	return "redirect:/product/purchaseFromCart.do";
    	}
    
    
    @RequestMapping("/set_address_1.do")
    public String Set_address_1 (Model model,HttpSession session,int Aid){
    	Address ca=new Address();
        ca=userService.findAddressbyAid(Aid);
        model.addAttribute("ca",ca);
        return "/member/set_address_1";
}
    
}
