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
import edu.scdx.service.SearchService;



@Controller
public class SearchController {
	
	 @Autowired
	 private SearchService searchService;
	@RequestMapping("/search.json")
    public String getSearch(Model model,HttpSession session,String keyword){
    	List<Product> productList =searchService.searchProduct(keyword);
    	System.out.println(keyword);
    	System.out.println(productList);
    	if(productList.size() == 0) {
    		return "noresult";
    	}
    	model.addAttribute("productList", productList);
		return "search";
	}
}
