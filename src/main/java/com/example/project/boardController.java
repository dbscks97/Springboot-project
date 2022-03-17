package com.example.project;

import java.io.File;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.service.BbsService;
import com.example.project.vo.BbsVO;
import com.example.project.vo.CategoryVO;

import net.sf.json.JSONArray;

@Controller
public class boardController {
	@Autowired
	private BbsService bbsService;
	
	
	@RequestMapping("/bbs_list")
  	public String bbs_list(Model listM, HttpServletRequest request, BbsVO b){
  		int page=1;
  		int limit=10;
  		
  		if(request.getParameter("page") != null) {
  			page=Integer.parseInt(request.getParameter("page"));
  		}
  		
  		//검색과 관련
  		String find_name=request.getParameter("find_name");
  		String find_field = request.getParameter("find_field");
  		b.setFind_field(find_field);
  		b.setFind_name("%"+find_name+"%");
  		
  		int totalCount = this.bbsService.getTotalCount(b);
  		
  		
  		b.setStartrow((page-1)*10+1);
  		b.setEndrow(b.getStartrow()+limit-1);
  		
  		List<BbsVO> blist= this.bbsService.bbs_list(b);
  		
  		
  		int maxpage=(int)((double)totalCount/limit+0.95);
  		
  		int startpage = (((int)((double)page/10+0.9))-1)*10+1;
  		
  		int endpage=maxpage;
  		if(endpage>startpage+10-1)  endpage = startpage+10-1;
  		
  		
  		listM.addAttribute("blist",blist);
  		listM.addAttribute("page",page);
  		listM.addAttribute("startpage",startpage);
  		listM.addAttribute("endpage",endpage);
  		listM.addAttribute("maxpage",maxpage);
  		listM.addAttribute("listCount",totalCount);
  		listM.addAttribute("find_field",find_field);
  		listM.addAttribute("find_name",find_name);
  		
  		return "../view/bbs/bbs_list";		
  	} 
  	@RequestMapping("/notice_bbs_list")
  	public String notice_bbs_list(Model listM, HttpServletRequest request, BbsVO b){
  		int page=1;
  		int limit=10;
  		
  		if(request.getParameter("page") != null) {
  			page=Integer.parseInt(request.getParameter("page"));
  		}
  		
  		//검색과 관련
  		String find_name=request.getParameter("find_name");
  		String find_field = request.getParameter("find_field");
  		b.setFind_field(find_field);
  		b.setFind_name("%"+find_name+"%");
  		
  		int totalCount = this.bbsService.getTotalCount(b);
  		
  		
  		b.setStartrow((page-1)*10+1);
  		b.setEndrow(b.getStartrow()+limit-1);
  		
  		List<BbsVO> blist= this.bbsService.notice_bbs_list(b);
  		
  		
  		int maxpage=(int)((double)totalCount/limit+0.95);
  		
  		int startpage = (((int)((double)page/10+0.9))-1)*10+1;
  		
  		int endpage=maxpage;
  		if(endpage>startpage+10-1)  endpage = startpage+10-1;
  		
  		
  		listM.addAttribute("blist",blist);
  		listM.addAttribute("page",page);
  		listM.addAttribute("startpage",startpage);
  		listM.addAttribute("endpage",endpage);
  		listM.addAttribute("maxpage",maxpage);
  		listM.addAttribute("listCount",totalCount);
  		listM.addAttribute("find_field",find_field);
  		listM.addAttribute("find_name",find_name);
  		
  		return "../view/bbs/notice_bbs_list";		
  	}
  	
    @RequestMapping("/notice_bbs_cont")
	public ModelAndView bbs_cont(int bbs_no, @RequestParam("state") String state,int page,BbsVO b) {
		
		if(state.equals("cont")) {
			b=this.bbsService.getBbsCont(bbs_no);
		}else {
			b=this.bbsService.getBbsCont2(bbs_no);
		}
		
		
		ModelAndView cm=new ModelAndView();
		cm.addObject("b",b);
		cm.addObject("page",page);
		
		if(state.equals("cont")) {
			cm.setViewName("../view/bbs/notice_bbs_cont");
		}else if(state.equals("reply")) {
			cm.setViewName("../view/bbs/notice_bbs_reply");
		}else if(state.equals("edit")) {
			cm.setViewName("../view/bbs/notice_bbs_edit");
		}else if(state.equals("del")) {
			cm.setViewName("../view/bbs/notice_bbs_del");
		}
		
		return cm;
	}
    
 
  	@RequestMapping(value="/notice_bbs_write",method=RequestMethod.GET) 
  	public String bbs_write(HttpServletRequest request,Model wm,CategoryVO c) throws Exception {
  	   int page=1;
  	   if(request.getParameter("page") != null) {
  		   page=Integer.parseInt(request.getParameter("page"));
  	   }
  	 
  	   c.setCatename(request.getParameter("catename"));
 	  
	   List<CategoryVO> category = this.bbsService.category(c);  	   
  	   wm.addAttribute("category",JSONArray.fromObject(category));
  	   
  	   wm.addAttribute("page",page);
  	   return "../view/bbs/notice_bbs_write";
  	}
  	
  	
  	@PostMapping("/notice_bbs_write_ok")
        private String boardInsertProc(HttpServletRequest request, @RequestPart MultipartFile files) throws Exception{
        
        BbsVO b= new BbsVO();
       
        
        if(files!=null){    
        	String fileName = files.getOriginalFilename(); 
            String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase(); 
            File destinationFile; 
            String destinationFileName;
            String fileUrl = "C:\\20210927\\My Java\\project_workspace\\project\\src\\main\\resources\\static\\images\\"; 
        
        do { 
            destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension; 
            destinationFile = new File(fileUrl+ destinationFileName); 
        } while (destinationFile.exists()); 
        
        destinationFile.getParentFile().mkdirs(); 
        files.transferTo(destinationFile); 
        
        b.setFileName(destinationFileName);
        b.setFileOriName(fileName);
        b.setFileUrl(fileUrl);
        }else{
        	String fileName="";
        	b.setFileOriName(fileName);
        }  
        b.setBbs_cateno(request.getParameter("bbs_cateno"));
        b.setBbs_name(request.getParameter("bbs_name"));
        b.setBbs_title(request.getParameter("bbs_title"));
        b.setBbs_cont(request.getParameter("bbs_cont"));
        b.setBbs_pwd(request.getParameter("bbs_pwd"));
        
        this.bbsService.insertBbs(b);
    
        
        return "redirect:/notice_bbs_list";
    }
  	
@RequestMapping("/notice_bbs_edit_ok")
	public ModelAndView bbs_edit_ok(HttpServletRequest request, BbsVO b,HttpServletResponse response) throws Exception{
	response.setContentType("text/html;charset=UTF-8"); 
	PrintWriter out=response.getWriter();
	
	
	int bbs_no = Integer.parseInt(request.getParameter("bbs_no"));
    int page =1;
    if(request.getParameter("page") != null) {
    	page = Integer.parseInt(request.getParameter("page"));
    }
    	
  String bbs_name=request.getParameter("bbs_name");
  String bbs_title=request.getParameter("bbs_title");
  String bbs_cont=request.getParameter("bbs_cont");
  String bbs_pwd=request.getParameter("bbs_pwd");
  
    BbsVO db_pwd = this.bbsService.getBbsCont2(bbs_no);//오라클부터 비번을 가져옴.
    
    if(!db_pwd.getBbs_pwd().equals(bbs_pwd)) {
    	out.println("<script>");
    	out.println("alert('비번이 다릅니다!');");
    	out.println("history.back();");
    	out.println("</script>");
    }
    else {
    
    b.setBbs_no(bbs_no); b.setBbs_name(bbs_name); b.setBbs_title(bbs_title); b.setBbs_cont(bbs_cont);
	
    
	this.bbsService.editBbs(b);
	
	ModelAndView em=new ModelAndView("redirect:/notice_bbs_cont");
	em.addObject("bbs_no",bbs_no);
	em.addObject("page",page);
	em.addObject("state","cont");
	return em; 
    }
    return null;
}


	@RequestMapping("/notice_bbs_del_ok")
	public String bbs_del_ok(int bbs_no,int page,String del_pwd,HttpServletResponse response,HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		
		BbsVO db_pwd=this.bbsService.getBbsCont2(bbs_no);
		
		if(!db_pwd.getBbs_pwd().equals(del_pwd)) {
			out.println("<script>");
			out.println("alert('비번이 다릅니다!');");
			out.println("history.go(-1);");
			out.println("</script>");
		}else {
				
			bbsService.delBbs(bbs_no);			

			
			return "redirect:/notice_bbs_list?page="+page;
		}
		return null;
	}
	@RequestMapping("/free_bbs_list")
  	public String free_bbs_list(Model listM, HttpServletRequest request, BbsVO b){
  		int page=1;
  		int limit=10;
  		
  		if(request.getParameter("page") != null) {
  			page=Integer.parseInt(request.getParameter("page"));
  		}
  		
  		//검색과 관련
  		String find_name=request.getParameter("find_name");
  		String find_field = request.getParameter("find_field");
  		b.setFind_field(find_field);
  		b.setFind_name("%"+find_name+"%");
  		
  		int totalCount = this.bbsService.getTotalCount(b);
  		
  		
  		b.setStartrow((page-1)*10+1);
  		b.setEndrow(b.getStartrow()+limit-1);
  		
  		List<BbsVO> blist= this.bbsService.free_bbs_list(b);
  		
  		
  		int maxpage=(int)((double)totalCount/limit+0.95);
  		
  		int startpage = (((int)((double)page/10+0.9))-1)*10+1;
  		
  		int endpage=maxpage;
  		if(endpage>startpage+10-1)  endpage = startpage+10-1;
  		
  		
  		listM.addAttribute("blist",blist);
  		listM.addAttribute("page",page);
  		listM.addAttribute("startpage",startpage);
  		listM.addAttribute("endpage",endpage);
  		listM.addAttribute("maxpage",maxpage);
  		listM.addAttribute("listCount",totalCount);
  		listM.addAttribute("find_field",find_field);
  		listM.addAttribute("find_name",find_name);
  		
  		return "../view/bbs/free_bbs_list";		
  	}
  	
    @RequestMapping("/free_bbs_cont")
	public ModelAndView free_bbs_cont(int bbs_no, @RequestParam("state") String state,int page,BbsVO b) {
		
		if(state.equals("cont")) {
			b=this.bbsService.getBbsCont(bbs_no);
		}else {
			b=this.bbsService.getBbsCont2(bbs_no);
		}
		
		
		ModelAndView cm=new ModelAndView();
		cm.addObject("b",b);
		cm.addObject("page",page);
		
		if(state.equals("cont")) {
			cm.setViewName("../view/bbs/free_bbs_cont");
		}else if(state.equals("reply")) {
			cm.setViewName("../view/bbs/free_bbs_reply");
		}else if(state.equals("edit")) {
			cm.setViewName("../view/bbs/free_bbs_edit");
		}else if(state.equals("del")) {
			cm.setViewName("../view/bbs/free_bbs_del");
		}
		
		return cm;
	}
    
 
    @RequestMapping(value="/free_bbs_write",method=RequestMethod.GET) 
  	public String free_bbs_write(HttpServletRequest request,Model wm,CategoryVO c) throws Exception {
  	   int page=1;
  	   if(request.getParameter("page") != null) {
  		   page=Integer.parseInt(request.getParameter("page"));
  	   }
  	 
  	   c.setCatename(request.getParameter("catename"));
 	  
	   List<CategoryVO> category = this.bbsService.category(c);  	   
  	   wm.addAttribute("category",JSONArray.fromObject(category));
  	   
  	   wm.addAttribute("page",page);
  	   return "../view/bbs/free_bbs_write";
  	}
  	
  	
  	@PostMapping("/free_bbs_write_ok")
        private String free_boardInsertProc(HttpServletRequest request, @RequestPart MultipartFile files) throws Exception{
        
  		 BbsVO b= new BbsVO();
         
         
         if(files!=null){    
         	String fileName = files.getOriginalFilename(); 
             String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase(); 
             File destinationFile; 
             String destinationFileName;
             String fileUrl = "C:\\20210927\\My Java\\project_workspace\\project\\src\\main\\resources\\static\\images\\"; 
         
         do { 
             destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension; 
             destinationFile = new File(fileUrl+ destinationFileName); 
         } while (destinationFile.exists()); 
         
         destinationFile.getParentFile().mkdirs(); 
         files.transferTo(destinationFile); 
         
         b.setFileName(destinationFileName);
         b.setFileOriName(fileName);
         b.setFileUrl(fileUrl);
         }else{
         	String fileName="";
         	b.setFileOriName(fileName);
         }  
         b.setBbs_cateno(request.getParameter("bbs_cateno"));
         b.setBbs_name(request.getParameter("bbs_name"));
         b.setBbs_title(request.getParameter("bbs_title"));
         b.setBbs_cont(request.getParameter("bbs_cont"));
         b.setBbs_pwd(request.getParameter("bbs_pwd"));
         
         this.bbsService.insertBbs(b);
     
        return "redirect:/free_bbs_list";
    }
  	
@RequestMapping("/free_bbs_edit_ok")
	public ModelAndView free_bbs_edit_ok(HttpServletRequest request, BbsVO b,HttpServletResponse response) throws Exception{
	response.setContentType("text/html;charset=UTF-8"); 
	PrintWriter out=response.getWriter();
	
	
	int bbs_no = Integer.parseInt(request.getParameter("bbs_no"));
    int page =1;
    if(request.getParameter("page") != null) {
    	page = Integer.parseInt(request.getParameter("page"));
    }
    	
  String bbs_name=request.getParameter("bbs_name");
  String bbs_title=request.getParameter("bbs_title");
  String bbs_cont=request.getParameter("bbs_cont");
  String bbs_pwd=request.getParameter("bbs_pwd");
  
    BbsVO db_pwd = this.bbsService.getBbsCont2(bbs_no);//오라클부터 비번을 가져옴.
    
    if(!db_pwd.getBbs_pwd().equals(bbs_pwd)) {
    	out.println("<script>");
    	out.println("alert('비번이 다릅니다!');");
    	out.println("history.back();");
    	out.println("</script>");
    }
    else {
    
    b.setBbs_no(bbs_no); b.setBbs_name(bbs_name); b.setBbs_title(bbs_title); b.setBbs_cont(bbs_cont);
	
    
	this.bbsService.editBbs(b);
	
	ModelAndView em=new ModelAndView("redirect:/free_bbs_cont");
	em.addObject("bbs_no",bbs_no);
	em.addObject("page",page);
	em.addObject("state","cont");
	return em; 
    }
    return null;
}


	@RequestMapping("/free_bbs_del_ok")
	public String free_bbs_del_ok(int bbs_no,int page,String del_pwd,HttpServletResponse response,HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		
		BbsVO db_pwd=this.bbsService.getBbsCont2(bbs_no);
		
		if(!db_pwd.getBbs_pwd().equals(del_pwd)) {
			out.println("<script>");
			out.println("alert('비번이 다릅니다!');");
			out.println("history.go(-1);");
			out.println("</script>");
		}else {
				
			bbsService.delBbs(bbs_no);			

			
			return "redirect:/free_bbs_list?page="+page;
		}
		return null;
	}
	
	@RequestMapping("/qna_bbs_list")
  	public String qna_bbs_list(Model listM, HttpServletRequest request, BbsVO b){
  		int page=1;
  		int limit=10;
  		
  		if(request.getParameter("page") != null) {
  			page=Integer.parseInt(request.getParameter("page"));
  		}
  		
  		//검색과 관련
  		String find_name=request.getParameter("find_name");
  		String find_field = request.getParameter("find_field");
  		b.setFind_field(find_field);
  		b.setFind_name("%"+find_name+"%");
  		
  		int totalCount = this.bbsService.getTotalCount(b);
  		
  		
  		b.setStartrow((page-1)*10+1);
  		b.setEndrow(b.getStartrow()+limit-1);
  		
  		List<BbsVO> blist= this.bbsService.qna_bbs_list(b);
  		
  		
  		int maxpage=(int)((double)totalCount/limit+0.95);
  		
  		int startpage = (((int)((double)page/10+0.9))-1)*10+1;
  		
  		int endpage=maxpage;
  		if(endpage>startpage+10-1)  endpage = startpage+10-1;
  		
  		
  		listM.addAttribute("blist",blist);
  		listM.addAttribute("page",page);
  		listM.addAttribute("startpage",startpage);
  		listM.addAttribute("endpage",endpage);
  		listM.addAttribute("maxpage",maxpage);
  		listM.addAttribute("listCount",totalCount);
  		listM.addAttribute("find_field",find_field);
  		listM.addAttribute("find_name",find_name);
  		
  		return "../view/bbs/qna_bbs_list";		
  	}
  	
    @RequestMapping("/qna_bbs_cont")
	public ModelAndView qna_bbs_cont(int bbs_no, @RequestParam("state") String state,int page,BbsVO b) {
		
		if(state.equals("cont")) {
			b=this.bbsService.getBbsCont(bbs_no);
		}else {
			b=this.bbsService.getBbsCont2(bbs_no);
		}
		
		
		ModelAndView cm=new ModelAndView();
		cm.addObject("b",b);
		cm.addObject("page",page);
		
		if(state.equals("cont")) {
			cm.setViewName("../view/bbs/qna_bbs_cont");
		}else if(state.equals("reply")) {
			cm.setViewName("../view/bbs/qna_bbs_reply");
		}else if(state.equals("edit")) {
			cm.setViewName("../view/bbs/qna_bbs_edit");
		}else if(state.equals("del")) {
			cm.setViewName("../view/bbs/qna_bbs_del");
		}
		
		return cm;
	}
    
 
    @RequestMapping(value="/qna_bbs_write",method=RequestMethod.GET) 
  	public String qna_bbs_write(HttpServletRequest request,Model wm,CategoryVO c) throws Exception {
  	   int page=1;
  	   if(request.getParameter("page") != null) {
  		   page=Integer.parseInt(request.getParameter("page"));
  	   }
  	 
  	   c.setCatename(request.getParameter("catename"));
 	  
	   List<CategoryVO> category = this.bbsService.category(c);  	   
  	   wm.addAttribute("category",JSONArray.fromObject(category));
  	   
  	   wm.addAttribute("page",page);
  	   return "../view/bbs/qna_bbs_write";
  	}
  	
  	
  	@PostMapping("/qna_bbs_write_ok")
        private String qna_boardInsertProc(HttpServletRequest request, @RequestPart MultipartFile files) throws Exception{
        
  		 BbsVO b= new BbsVO();
         
         
         if(files!=null){    
         	String fileName = files.getOriginalFilename(); 
             String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase(); 
             File destinationFile; 
             String destinationFileName;
             String fileUrl = "C:\\20210927\\My Java\\project_workspace\\project\\src\\main\\resources\\static\\images\\"; 
         
         do { 
             destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension; 
             destinationFile = new File(fileUrl+ destinationFileName); 
         } while (destinationFile.exists()); 
         
         destinationFile.getParentFile().mkdirs(); 
         files.transferTo(destinationFile); 
         
         b.setFileName(destinationFileName);
         b.setFileOriName(fileName);
         b.setFileUrl(fileUrl);
         }else{
         	String fileName="";
         	b.setFileOriName(fileName);
         }  
         b.setBbs_cateno(request.getParameter("bbs_cateno"));
         b.setBbs_name(request.getParameter("bbs_name"));
         b.setBbs_title(request.getParameter("bbs_title"));
         b.setBbs_cont(request.getParameter("bbs_cont"));
         b.setBbs_pwd(request.getParameter("bbs_pwd"));
         
         this.bbsService.insertBbs(b);
        
        return "redirect:/qna_bbs_list";
    }
  	
@RequestMapping("/qna_bbs_edit_ok")
	public ModelAndView qna_bbs_edit_ok(HttpServletRequest request, BbsVO b,HttpServletResponse response) throws Exception{
	response.setContentType("text/html;charset=UTF-8"); 
	PrintWriter out=response.getWriter();
	
	
	int bbs_no = Integer.parseInt(request.getParameter("bbs_no"));
    int page =1;
    if(request.getParameter("page") != null) {
    	page = Integer.parseInt(request.getParameter("page"));
    }
    	
  String bbs_name=request.getParameter("bbs_name");
  String bbs_title=request.getParameter("bbs_title");
  String bbs_cont=request.getParameter("bbs_cont");
  String bbs_pwd=request.getParameter("bbs_pwd");
  
    BbsVO db_pwd = this.bbsService.getBbsCont2(bbs_no);//오라클부터 비번을 가져옴.
    
    if(!db_pwd.getBbs_pwd().equals(bbs_pwd)) {
    	out.println("<script>");
    	out.println("alert('비번이 다릅니다!');");
    	out.println("history.back();");
    	out.println("</script>");
    }
    else {
    
    b.setBbs_no(bbs_no); b.setBbs_name(bbs_name); b.setBbs_title(bbs_title); b.setBbs_cont(bbs_cont);
	
    
	this.bbsService.editBbs(b);
	
	ModelAndView em=new ModelAndView("redirect:/qna_bbs_cont");
	em.addObject("bbs_no",bbs_no);
	em.addObject("page",page);
	em.addObject("state","cont");
	return em; 
    }
    return null;
}


	@RequestMapping("/qna_bbs_del_ok")
	public String qna_bbs_del_ok(int bbs_no,int page,String del_pwd,HttpServletResponse response,HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		
		BbsVO db_pwd=this.bbsService.getBbsCont2(bbs_no);
		
		if(!db_pwd.getBbs_pwd().equals(del_pwd)) {
			out.println("<script>");
			out.println("alert('비번이 다릅니다!');");
			out.println("history.go(-1);");
			out.println("</script>");
		}else {
				
			bbsService.delBbs(bbs_no);			

			
			return "redirect:/qna_bbs_list?page="+page;
		}
		return null;
	}
	@RequestMapping("/advice_bbs_list")
  	public String advice_bbs_list(Model listM, HttpServletRequest request, BbsVO b){
  		int page=1;
  		int limit=10;
  		
  		if(request.getParameter("page") != null) {
  			page=Integer.parseInt(request.getParameter("page"));
  		}
  		
  		//검색과 관련
  		String find_name=request.getParameter("find_name");
  		String find_field = request.getParameter("find_field");
  		b.setFind_field(find_field);
  		b.setFind_name("%"+find_name+"%");
  		
  		int totalCount = this.bbsService.getTotalCount(b);
  		
  		
  		b.setStartrow((page-1)*10+1);
  		b.setEndrow(b.getStartrow()+limit-1);
  		
  		List<BbsVO> blist= this.bbsService.advice_bbs_list(b);
  		
  		
  		int maxpage=(int)((double)totalCount/limit+0.95);
  		
  		int startpage = (((int)((double)page/10+0.9))-1)*10+1;
  		
  		int endpage=maxpage;
  		if(endpage>startpage+10-1)  endpage = startpage+10-1;
  		
  		
  		listM.addAttribute("blist",blist);
  		listM.addAttribute("page",page);
  		listM.addAttribute("startpage",startpage);
  		listM.addAttribute("endpage",endpage);
  		listM.addAttribute("maxpage",maxpage);
  		listM.addAttribute("listCount",totalCount);
  		listM.addAttribute("find_field",find_field);
  		listM.addAttribute("find_name",find_name);
  		
  		return "../view/bbs/advice_bbs_list";		
  	}
  	
    @RequestMapping("/advice_bbs_cont")
	public ModelAndView advice_bbs_cont(int bbs_no, @RequestParam("state") String state,int page,BbsVO b) {
		
		if(state.equals("cont")) {
			b=this.bbsService.getBbsCont(bbs_no);
		}else {
			b=this.bbsService.getBbsCont2(bbs_no);
		}
		
		
		ModelAndView cm=new ModelAndView();
		cm.addObject("b",b);
		cm.addObject("page",page);
		
		if(state.equals("cont")) {
			cm.setViewName("../view/bbs/advice_bbs_cont");
		}else if(state.equals("reply")) {
			cm.setViewName("../view/bbs/advice_bbs_reply");
		}else if(state.equals("edit")) {
			cm.setViewName("../view/bbs/advice_bbs_edit");
		}else if(state.equals("del")) {
			cm.setViewName("../view/bbs/advice_bbs_del");
		}
		
		return cm;
	}
    
 
    @RequestMapping(value="/advice_bbs_write",method=RequestMethod.GET) 
  	public String advice_bbs_write(HttpServletRequest request,Model wm,CategoryVO c) throws Exception {
  	   int page=1;
  	   if(request.getParameter("page") != null) {
  		   page=Integer.parseInt(request.getParameter("page"));
  	   }
  	 
  	   c.setCatename(request.getParameter("catename"));
 	  
	   List<CategoryVO> category = this.bbsService.category(c);  	   
  	   wm.addAttribute("category",JSONArray.fromObject(category));
  	   
  	   wm.addAttribute("page",page);
  	   return "../view/bbs/advice_bbs_write";
  	}
  	
  	
  	@PostMapping("/advice_bbs_write_ok")
        private String advcie_boardInsertProc(HttpServletRequest request, @RequestPart MultipartFile files) throws Exception{
        
  		 BbsVO b= new BbsVO();
         
         
         if(files!=null){    
         	String fileName = files.getOriginalFilename(); 
             String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase(); 
             File destinationFile; 
             String destinationFileName;
             String fileUrl = "C:\\20210927\\My Java\\project_workspace\\project\\src\\main\\resources\\static\\images\\"; 
         
         do { 
             destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension; 
             destinationFile = new File(fileUrl+ destinationFileName); 
         } while (destinationFile.exists()); 
         
         destinationFile.getParentFile().mkdirs(); 
         files.transferTo(destinationFile); 
         
         b.setFileName(destinationFileName);
         b.setFileOriName(fileName);
         b.setFileUrl(fileUrl);
         }else{
         	String fileName="";
         	b.setFileOriName(fileName);
         }  
         b.setBbs_cateno(request.getParameter("bbs_cateno"));
         b.setBbs_name(request.getParameter("bbs_name"));
         b.setBbs_title(request.getParameter("bbs_title"));
         b.setBbs_cont(request.getParameter("bbs_cont"));
         b.setBbs_pwd(request.getParameter("bbs_pwd"));
         
         this.bbsService.insertBbs(b);
        
        return "redirect:/advice_bbs_list";
    }
  	
@RequestMapping("/advice_bbs_edit_ok")
	public ModelAndView advice_bbs_edit_ok(HttpServletRequest request, BbsVO b,HttpServletResponse response) throws Exception{
	response.setContentType("text/html;charset=UTF-8"); 
	PrintWriter out=response.getWriter();
	
	
	int bbs_no = Integer.parseInt(request.getParameter("bbs_no"));
    int page =1;
    if(request.getParameter("page") != null) {
    	page = Integer.parseInt(request.getParameter("page"));
    }
    	
  String bbs_name=request.getParameter("bbs_name");
  String bbs_title=request.getParameter("bbs_title");
  String bbs_cont=request.getParameter("bbs_cont");
  String bbs_pwd=request.getParameter("bbs_pwd");
  
    BbsVO db_pwd = this.bbsService.getBbsCont2(bbs_no);//오라클부터 비번을 가져옴.
    
    if(!db_pwd.getBbs_pwd().equals(bbs_pwd)) {
    	out.println("<script>");
    	out.println("alert('비번이 다릅니다!');");
    	out.println("history.back();");
    	out.println("</script>");
    }
    else {
    
    b.setBbs_no(bbs_no); b.setBbs_name(bbs_name); b.setBbs_title(bbs_title); b.setBbs_cont(bbs_cont);
	
    
	this.bbsService.editBbs(b);
	
	ModelAndView em=new ModelAndView("redirect:/advice_bbs_cont");
	em.addObject("bbs_no",bbs_no);
	em.addObject("page",page);
	em.addObject("state","cont");
	return em; 
    }
    return null;
}


	@RequestMapping("/advice_bbs_del_ok")
	public String advice_bbs_del_ok(int bbs_no,int page,String del_pwd,HttpServletResponse response,HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		
		BbsVO db_pwd=this.bbsService.getBbsCont2(bbs_no);
		
		if(!db_pwd.getBbs_pwd().equals(del_pwd)) {
			out.println("<script>");
			out.println("alert('비번이 다릅니다!');");
			out.println("history.go(-1);");
			out.println("</script>");
		}else {
				
			bbsService.delBbs(bbs_no);			

			
			return "redirect:/advice_bbs_list?page="+page;
		}
		return null;
	}
}
