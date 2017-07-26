package edu.scdx.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	
	@RequestMapping("/search.do")
    public String getSearch(Model model,HttpSession session){
		
		
		
		return "search";
	}
}
