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

import edu.scdx.entity.Cart;
import edu.scdx.entity.CartItem;
import edu.scdx.entity.Product;
import edu.scdx.entity.User;
import edu.scdx.service.CartService;
import edu.scdx.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
    private ProductService productService;
	@Autowired
    private CartService cartService;
	
    @RequestMapping("/purchase.json")
    public String purchase(Model model,HttpSession session,Integer pid){
        //return "/member/default/register";
    	User user = (User) session.getAttribute("user");
    	if(user == null){
    		return "/member/default/login";
    	}
    	//System.out.println(user);
    	Product product = productService.findProductById(pid);
    	//System.out.println(product);
    	
    	ArrayList productList =  new ArrayList();
    	productList.add(product);
    	float totalPrice = 0;
    	for(Object p : productList) {
    		totalPrice += ((Product) p).getSalePrice();
    	}
    	model.addAttribute("productList", productList);
    	model.addAttribute("totalPrice", totalPrice);
    	return "/member/purchase";
    }
    
    @RequestMapping("/purchaseFromCart.do")
    public String purchaseFromCart(Model model,HttpSession session) {
    	User user = (User) session.getAttribute("user");
    	if(user != null) {
    		ArrayList<Cart> carts = (ArrayList<Cart>) cartService.getAll(user.getUid());
        	ArrayList productList = new ArrayList();
        	for(Cart c:carts) {
        		Product p = productService.findProductById(c.getPid());
        		productList.add(p);
        	} 
        	float totalPrice = 0;
        	for(Object p : productList) {
        		totalPrice += ((Product) p).getSalePrice();
        	}
        	model.addAttribute("productList", productList);
        	model.addAttribute("totalPrice", totalPrice);
        	
        	return "/member/purchase";
    	}
    	
    
    	return "/member/default/login";
    }
    
    @RequestMapping("/add2cart.json")
    public String insertCart(Model model,HttpServletResponse response  ,HttpSession session,Integer pid){
    	System.out.println("enter /add2cart.json");
    	System.out.println("pid  "+pid);
    	User user = (User) session.getAttribute("user");
    	if(user == null){
    		return "/member/default/login";
    	}
    	Cart cartItem = new Cart();
    	cartItem.setUid(user.getUid());
    	cartItem.setPid(pid);
    	cartItem.setNum(1);
    	cartService.addCart(cartItem);    	
    	
    	java.util.List<Cart> carts = cartService.getAll(user.getUid());
    	
    	ArrayList cartProductList = new ArrayList();
    	for(Cart c:carts) {
    		Product p = productService.findProductById(c.getPid());
    		CartItem item = new CartItem(c.getCid(),pid, p.getImage(), 1, p.getDescription(), p.getSalePrice());
    		cartProductList.add(item);
    	}
    	
    	model.addAttribute("cartProductList", cartProductList);
    	
    	//return "redirect:index.do";
		//return null;
    	//return "forward:/index.do";
    	return "redirect:/index.do "; 
    }
    
    @RequestMapping("/deleteCart.json")
    public String deleteCart(Model model,HttpServletResponse response  ,HttpSession session,Integer pid,Integer cid){
    	System.out.println("enter /deleteCart.json");
    	System.out.println("pid  "+pid);
    	User user = (User) session.getAttribute("user");
    	if(user == null){
    		return "/member/default/login";
    	}
    	
    	cartService.deleteCart(cid);    	
    	
    	
    	//return "redirect:index.do";
		//return null;
    	//return "forward:/index.do";
    	return "redirect:/index.do "; 
    }
}
