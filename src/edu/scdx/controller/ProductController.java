package edu.scdx.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import edu.scdx.entity.Address;
import edu.scdx.entity.Cart;
import edu.scdx.entity.CartItem;
import edu.scdx.entity.Product;
import edu.scdx.entity.SaleItem;
import edu.scdx.entity.User;
import edu.scdx.service.CartService;
import edu.scdx.service.ProductService;
import edu.scdx.service.UserService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
    private ProductService productService;
	@Autowired
    private CartService cartService;
	@Autowired
    private UserService userService;
	
    @RequestMapping("/purchase.json")
    public String purchase(Model model,HttpSession session,Integer pid,Integer num){
        //return "/member/default/register";
    	User user = (User) session.getAttribute("user");
    	if(user == null){
    		return "redirect:/login.do";
    	}
    	
    	Product p = productService.findProductById(pid);
    	//System.out.println(product);
    	ArrayList<SaleItem> SaleItems = new ArrayList<SaleItem>();
    	int n=1;
    	if(num != null)
    		n = num;
	
    	SaleItem item = new SaleItem(p.getImage(), p.getDescription(), n, p.getSalePrice(), p.getSalePrice()*n);
    	
    	SaleItems.add(item);
    	float totalPrice = 0;
    	for(Object p10 : SaleItems) {
    		totalPrice += ((SaleItem) p10).getTotlePrice();
    	}
    	model.addAttribute("productList", SaleItems);
    	model.addAttribute("totalPrice", totalPrice);
    	
    	/**
    	 * 购物车
    	 *  
    	 * */
    	
    	if(user != null) {
    		ArrayList<Cart> carts = (ArrayList<Cart>) cartService.getAll(user.getUid());
        	
        	ArrayList cartProductList = new ArrayList();
        	float cartProductPrice = 0;
        	int length = 0;
        	for(Cart c:carts) {
        		Product p1 = productService.findProductById(c.getPid());
        		CartItem item1 = new CartItem(c.getCid(), p1.getPid(), p1.getImage(), c.getNum(), p1.getDescription(), p1.getSalePrice()*c.getNum());
        		cartProductList.add(item1);
        		cartProductPrice += p1.getSalePrice()*c.getNum();
        		length += 1;
        	}
        	
        	model.addAttribute("cartProductList", cartProductList);
        	model.addAttribute("cartProductNum", length);       	
        	model.addAttribute("cartProductPrice",cartProductPrice);
    	}else {
    		model.addAttribute("cartProductNum", 0);   
    	}
    	
    	/**
    	 * 显示当前地址
    	 * */
    	 Address ca=new Address();
         ca=userService.findCurrentAddress(user.getUid());
         model.addAttribute("ca",ca);
    	
    	
    	return "/member/purchase";
    }
    
    @RequestMapping("/purchaseFromCart.do")
    public String purchaseFromCart(Model model,HttpSession session) {
    	User user = (User) session.getAttribute("user");
    	if(user != null) {
    		ArrayList<SaleItem> SaleItems = new ArrayList<SaleItem>();
    		
    		ArrayList<Cart> carts = (ArrayList<Cart>) cartService.getAll(user.getUid());
        	ArrayList productList = new ArrayList();
        	for(Cart c:carts) {
        		Product p = productService.findProductById(c.getPid());
        		//productList.add(p);
        		SaleItem item = new SaleItem(p.getImage(), p.getDescription(), c.getNum(), p.getSalePrice(), p.getSalePrice()*c.getNum());
        		SaleItems.add(item);
        	} 
        	float totalPrice = 0;
        	for(Object p : SaleItems) {
        		totalPrice += ((SaleItem) p).getTotlePrice();
        	}
        	model.addAttribute("productList", SaleItems);
        	model.addAttribute("totalPrice", totalPrice);
        	
        	/**
        	 * 购物车
        	 *  
        	 * */
        
        	if(user != null) {
        		ArrayList<Cart> carts1 = (ArrayList<Cart>) cartService.getAll(user.getUid());
            	
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
        	 * 显示当前地址
        	 * */
        	 Address ca=new Address();
             ca=userService.findCurrentAddress(user.getUid());
             model.addAttribute("ca",ca);
             
        	return "/member/purchase";
    	}
    	
    
    	return "redirect:/login.do";
    }
    
    @RequestMapping("/add2cart.json")
    public String insertCart(Model model,HttpServletResponse response  ,HttpSession session,Integer pid,Integer num){
    	System.out.println("enter /add2cart.json");
    	System.out.println("pid  "+pid);
    	User user = (User) session.getAttribute("user");
    	System.out.println(user);
    	if(user == null){
    		return "redirect:/login.do";
    	}
    	
    	Cart cartItem = new Cart();
    	cartItem.setUid(user.getUid());
    	cartItem.setPid(pid);
    	int n = 1;
    	if(num != null)
    		n = num;
    	cartItem.setNum(n);
    	cartService.addCart(cartItem);    	
    	
    	java.util.List<Cart> carts = cartService.getAll(user.getUid());
    	
    	
    	
    	ArrayList cartProductList = new ArrayList();
    	for(Cart c:carts) {
    		Product p = productService.findProductById(c.getPid());
    		CartItem item = new CartItem(c.getCid(),p.getPid(), p.getImage(), n, p.getDescription(), p.getSalePrice()*n);
    		cartProductList.add(item);
    	}
    	
    	model.addAttribute("cartProductList", cartProductList);
    	
    	return "redirect:/index.do "; 
    }
    
    @RequestMapping("/deleteCart.json")
    public String deleteCart(Model model,HttpServletResponse response  ,HttpSession session,Integer pid,Integer cid){
    	System.out.println("enter /deleteCart.json");
    	System.out.println("pid  "+pid);
    	User user = (User) session.getAttribute("user");
    	if(user == null){
    		return "redirect:/login.do";
    	}
    	
    	cartService.deleteCart(cid);    	
    	
    	
    	//return "redirect:index.do";
		//return null;
    	//return "forward:/index.do";
    	return "redirect:/index.do "; 
    }
    
    @RequestMapping("/checkout.do")
    public String checkout(Model model,HttpSession session,float price) {
    	
    	model.addAttribute("price",price);
    	return "/product/checkout";
    }
}
