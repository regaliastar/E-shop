package edu.scdx.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import edu.scdx.entity.Cart;
import edu.scdx.entity.CartItem;
import edu.scdx.entity.Product;
import edu.scdx.entity.User;
import edu.scdx.service.CartService;
import edu.scdx.service.ProductService;
import edu.scdx.service.UserService;

@Controller
public class CommonController {
    @Autowired
    private UserService userService;
    @Autowired
    private ProductService productService;
	@Autowired
    private CartService cartService;
    
    @RequestMapping("/index.do")
    public String getIndex(Model model,HttpSession session){
    	//String uname = "kiana";
    	//User getUser = userService.findUserByName(uname);
    	//model.addAttribute("user1", getUser);
    	
    	ArrayList productList = new ArrayList();
    	
    	
    	Product p1 = productService.findProductById(3);
    	productList.add(p1);   	
    	Product p2 = productService.findProductById(12);
    	productList.add(p2);   	
    	Product p3 = productService.findProductById(5);
    	productList.add(p3);
    	Product p4 = productService.findProductById(6);
    	productList.add(p4);    	
    	Product p5 = productService.findProductById(7);
    	productList.add(p5);
    	Product p6 = productService.findProductById(8);
    	productList.add(p6);
    	Product p7 = productService.findProductById(9);
    	productList.add(p7);
    	Product p8 = productService.findProductById(10);
    	productList.add(p8);    	
    	Product p9 = productService.findProductById(11);
    	productList.add(p9);
    	Product p10 = productService.findProductById(4);
    	productList.add(p10);
    	model.addAttribute("productList",productList);
    	/**
    	 * 购物车
    	 *  
    	 * */
    	User user = (User) session.getAttribute("user");
    	if(user != null) {
    		List<Cart> carts = cartService.getAll(user.getUid());
        	
        	ArrayList cartProductList = new ArrayList();
        	float cartProductPrice = 0;
        	int length = 0;
        	for(Cart c:carts) {
        		Product p = productService.findProductById(c.getPid());
        		CartItem item = new CartItem(c.getCid(), p.getPid(), p.getImage(), c.getNum(), p.getDescription(), p.getSalePrice()*c.getNum());
        		cartProductList.add(item);
        		cartProductPrice += p.getSalePrice()*c.getNum();
        		length += 1;
        	}
        	
        	model.addAttribute("cartProductList", cartProductList);
        	model.addAttribute("cartProductNum", length);       	
        	model.addAttribute("cartProductPrice",cartProductPrice);
    	}else {
    		model.addAttribute("cartProductNum", 0);   
    	}
    	
    	/**
    	 * 特惠商品
    	 * */
    	ArrayList thsp = new ArrayList();
    	Product p13 = productService.findProductById(13);
    	thsp.add(p13);
    	Product p14 = productService.findProductById(14);
    	thsp.add(p14);
    	Product p15 = productService.findProductById(15);
    	thsp.add(p15);
    	
    	//System.out.println(thsp.size());
    	
    	model.addAttribute("thsp", thsp);   
    	
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
    	
    	ArrayList commendList = new ArrayList();
    	for(int i=3;i<=8;i++) {
    		Product p = productService.findProductById(i);
    		commendList.add(p);  
    	}
    	
    	/**
    	 * 购物车
    	 *  
    	 * */
    	User user = (User) session.getAttribute("user");
    	if(user != null) {
    		List<Cart> carts = cartService.getAll(user.getUid());
        	
        	ArrayList cartProductList = new ArrayList();
        	float cartProductPrice = 0;
        	int length = 0;
        	for(Cart c:carts) {
        		Product p = productService.findProductById(c.getPid());
        		CartItem item = new CartItem(c.getCid(), p.getPid(), p.getImage(), c.getNum(), p.getDescription(), p.getSalePrice()*c.getNum());
        		cartProductList.add(item);
        		cartProductPrice += p.getSalePrice()*c.getNum();
        		length += 1;
        	}
        	
        	model.addAttribute("cartProductList", cartProductList);
        	model.addAttribute("cartProductNum", length);       	
        	model.addAttribute("cartProductPrice",cartProductPrice);
    	}else {
    		model.addAttribute("cartProductNum", 0);   
    	}
    	
    	//6个
    	model.addAttribute("commendList", commendList);
        return "/product/main";
    }
    
        @RequestMapping("/set_address.do")
        public String getSet_address (Model model,HttpSession session){
        	
        	User user = (User) session.getAttribute("user");
        	/**
        	 * 购物车
        	 *  
        	 * */
        	if(user != null) {
        		List<Cart> carts = cartService.getAll(user.getUid());
            	
            	ArrayList cartProductList = new ArrayList();
            	float cartProductPrice = 0;
            	int length = 0;
            	for(Cart c:carts) {
            		Product p = productService.findProductById(c.getPid());
            		CartItem item = new CartItem(c.getCid(), p.getPid(), p.getImage(), c.getNum(), p.getDescription(), p.getSalePrice()*c.getNum());
            		cartProductList.add(item);
            		cartProductPrice += p.getSalePrice()*c.getNum();
            		length += 1;
            	}
            	
            	model.addAttribute("cartProductList", cartProductList);
            	model.addAttribute("cartProductNum", length);       	
            	model.addAttribute("cartProductPrice",cartProductPrice);
        	}else {
        		model.addAttribute("cartProductNum", 0);   
        	}
        	
        	return "/member/set_address";
    }
    }
