package com.example.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
    @RequestMapping("/admin")
    public String adminIndex() {
    	return "admin/jsp/index";
    }    
    
    @RequestMapping("/admin/userlist")
    public String adminUserList() {
    	return "admin/jsp/userlist";
    }
    
    @RequestMapping("/admin/point")
    public String adminPoint() {
    	return "admin/jsp/userpoint";
    }  
    
    @RequestMapping("/admin/board")
    public String adminBoard() {
    	return "admin/jsp/boardlist";
    }
    
    @RequestMapping("/admin/comment")
    public String adminBoardCommnet() {
    	return "admin/jsp/commentlist";
    }
    
    @RequestMapping("/admin/banner")
    public String adminBanner() {
    	return "admin/jsp/bannertable";
    }
}
