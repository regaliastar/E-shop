package edu.scdx.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import edu.scdx.entity.Product;
import edu.scdx.entity.User;
import edu.scdx.service.ProductService;
import edu.scdx.service.UserService;

@Controller
public class CommonController {
    @Autowired
    private UserService userService;
    @Autowired
    private ProductService productService;
    
    @RequestMapping("/index.do")
    public String getIndex(Model model,HttpSession session){
    	String uname = "kiana";
    	User getUser = userService.findUserByName(uname);
    	model.addAttribute("user1", getUser);
    	
    	/*Product p1 = productService.findProductById(1);
    	//System.out.println(p1);
    	model.addAttribute("p1", p1);*/
    	Product p1 = productService.findProductById(3);
    	System.out.println(p1);
    	model.addAttribute("p1", p1);
    	
    	Product p2 = productService.findProductById(4);
    	System.out.println(p2);
    	model.addAttribute("p2", p2);
    	
    	Product p3 = productService.findProductById(5);
    	System.out.println(p3);
    	model.addAttribute("p3", p3);
    	
    	Product p4 = productService.findProductById(6);
    	System.out.println(p4);
    	model.addAttribute("p4", p4);
    	
    	Product p5 = productService.findProductById(7);
    	System.out.println(p5);
    	model.addAttribute("p5", p5);
    	
    	Product p6 = productService.findProductById(8);
    	System.out.println(p6);
    	model.addAttribute("p6", p6);
    	
    	Product p7 = productService.findProductById(9);
    	System.out.println(p7);
    	model.addAttribute("p7", p7);
    	
    	Product p8 = productService.findProductById(10);
    	System.out.println(p8);
    	model.addAttribute("p8", p8);
    	
    	Product p9 = productService.findProductById(11);
    	System.out.println(p9);
    	model.addAttribute("p9", p9);
    	
    	Product p10 = productService.findProductById(12);
    	System.out.println(p10);
    	model.addAttribute("p10", p10);
    	
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
    
    //进入商品详情页
    @RequestMapping("/product.json")
    public String getProduct (Model model,HttpSession session,Integer id){
    	Product product = productService.findProductById(id);
    	model.addAttribute("product", product);
        return "/product/main";
    }
}
