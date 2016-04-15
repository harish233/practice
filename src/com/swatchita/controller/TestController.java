package com.swatchita.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.swatchita.pojo.GeoHierPojo;
import com.swatchita.pojo.LogPojo;
import com.swatchita.service.GeoHierService;
import com.swatchita.service.LoginService;

@Controller
public class TestController {

	@Autowired
	private LoginService logService;
	
	@RequestMapping("loginDisplay")
	private ModelAndView loginDisplay(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login.jsp");
		return mv;
	}
	
	@Autowired
	private GeoHierService geohierService;
	
	@RequestMapping("test")
	public ModelAndView test(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login.jsp");
		return mv;
	}
	
	@RequestMapping("login1")
	public ModelAndView login(LogPojo lp){
		ModelAndView mv=new ModelAndView();
		boolean result=logService.loginService(lp);
		/*Session session=sf.openSession();
		Query qry=session.createQuery("from LogPojo where user=? and password=?");
		qry.setString(0, lp.getUser());
		qry.setString(1, lp.getPassword());
		List<LogPojo> list1=qry.list();
		if(list1!=null && list1.size()>0){
		mv.setViewName("home.jsp");
		}
		else{
			mv.setViewName("login.jsp");
		}*/
		if(result){
			List<GeoHierPojo> list=geohierService.getGeoHierRecord();
			mv.addObject("geoHierList",list);
			mv.setViewName("home.jsp");
		}
		else{
			mv.setViewName("login.jsp");
		}
		return mv;
	}
}
