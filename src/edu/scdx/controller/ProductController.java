package edu.scdx.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import edu.scdx.entity.Product;
import edu.scdx.entity.User;
import edu.scdx.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
    private ProductService productService;
	
    @RequestMapping("/purchase.json")
    public String getRegister(Model model,HttpSession session,Integer pid){
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
}
