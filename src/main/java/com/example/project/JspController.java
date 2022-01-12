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
    
    @RequestMapping("BD_Cont")
    public String BD_Cont()  {
        return "BD_Cont";
    }

    @RequestMapping("header")
    public String header()  {
        return "header";
    }
    
    @RequestMapping("footer")
    public String footer() {
        return "footer";
    }
    
    @RequestMapping("BD_list")
    public String BD_list() {
        return "BD_list";
    }
    
    @RequestMapping("BD_write")
    public String BD_write() {
        return "BD_write";
    }
}