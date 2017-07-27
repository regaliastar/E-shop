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
import edu.scdx.entity.Cart;
import edu.scdx.entity.CartItem;
import edu.scdx.entity.Product;
import edu.scdx.entity.User;
import edu.scdx.service.CartService;
import edu.scdx.service.ProductService;
import edu.scdx.service.SearchService;



@Controller
public class SearchController {
	@Autowired
    private CartService cartService;
	@Autowired
    private SearchService searchService;
	@Autowired
	private ProductService productService;
	 
	@RequestMapping("/search.json")
    public String getSearch(Model model,HttpSession session,String keyword){
    	List<Product> productList =searchService.searchProduct(keyword);
    	System.out.println(keyword);
    	System.out.println(productList);
    	if(productList.size() == 0) {
    		return "noresult";
    	}
    	model.addAttribute("productList", productList);
    	
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
    	
		return "search";
	}
}
