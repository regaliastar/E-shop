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
    
    /**
     * 鑾峰彇json 鐨勭涓�绉嶆柟寮�
     * 杩斿洖json 鏍煎紡
     * @param model
     * @param session
     * @param id
     * @return
     */
    @RequestMapping("/getUserA.json")
    @ResponseBody
    public Object getUserByIdA(Model model,HttpSession session,Integer id ){
    	User user = userService.findUserById(id);
    	return user;
    }
    
    /**
     * 鑾峰彇绗琷son 鐨勭浜岀鏂瑰紡
     * @param model
     * @param response
     * @param session
     * @param id
     */
    @RequestMapping("/getUserB.json")
    public void getUserByIdB(Model model,HttpServletResponse response,HttpSession session,Integer id ){
    	User user = userService.findUserById(id);
    	JsonUtil.printByJSON(response, user);
    }
    
    @RequestMapping("/addUser.do")
    public String insertUser(Model model,HttpSession session,String Uname,String pw){
    	Uname = "233";
    	pw = "123456";
    	User user = new User();
    	user.setUname(Uname);
    	user.setPw(pw);
    	userService.addUser(user);
    	return "insertOK";
    }
    
    
    
    
    
}
