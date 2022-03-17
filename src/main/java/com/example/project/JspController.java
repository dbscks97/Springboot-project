package com.example.project;
 



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class JspController {
	
	
    @RequestMapping("main")
    public String main()  {
        return "main";
    }
    
    @RequestMapping("main_login")
    public String main_login()  {
        return "main_login";
    }
 
    @RequestMapping("header")
    public String header()  {
        return "header";
    }
    
    @RequestMapping("footer")
    public String footer() {
        return "footer";
    }
    @RequestMapping("introduce")
    public String introduce() {
        return "introduce";
    }

    @RequestMapping("question_contents")
    public String question_contents() {
        return "question_contents";
    }
 @RequestMapping("question")
    public String question() {
        return "question";
    }
    
    @RequestMapping("login_toggle")
    public String login_toggle() {
        return "login_toggle";
    }
    @RequestMapping("login_page")
    public String login_page() {
        return "login_page";
    }
    @RequestMapping("mypage")
    public String mypage() {
        return "mypage";
    }
    
}