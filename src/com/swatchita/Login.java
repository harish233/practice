package com.swatchita;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.swatchita.pojo.LogPojo;

@Controller
public class Login {

	@RequestMapping("login")
	public ModelAndView login(LogPojo lp,HttpServletRequest req){
		System.out.println(lp.getUser());
		System.out.println(lp.getPassword());
		HttpSession ses=req.getSession();
		ServletContext sc=(ServletContext)ses.getServletContext();
		
		Integer usercount=(Integer)sc.getAttribute("usercount");
		if(usercount==null){
			usercount=1;
		}
		else{
			usercount++;
		}
		System.out.println("usercount"+usercount);
		ses.setAttribute("usercount", usercount);
		Integer count=(Integer) sc.getAttribute("count");
		if(count==null){
			count=1;
		}
		else{
			count++;
		}
		System.out.println("count"+count);
		sc.setAttribute("count", count);
		ModelAndView mv=new ModelAndView();
		if(lp.getUser().equals(lp.getPassword()))
		{
			
			mv.setViewName("home.jsp");
		}
		else
		{
				mv.setViewName("login.jsp");
		}
		
		return mv;
	}
}	
	
