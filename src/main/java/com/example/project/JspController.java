package com.example.project;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
@Controller
public class JspController {
 
    @RequestMapping("main")
    public String main()  {
        return "main";
    }

    @RequestMapping("header")
    public String header()  {
        return "header";
    }
    
    @RequestMapping("footer")
    public String footer() {
        return "footer";
    }
    
    
    
}