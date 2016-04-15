package com.swatchita.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.swatchita.pojo.GeoHierPojo;
import com.swatchita.service.GeoHierService;

@Controller
public class GeoHierController {

	private static final Logger LOGGER=Logger.getLogger(GeoHierController.class);
	@Autowired
	private GeoHierService geoserv;
	
	@RequestMapping("save")
	public String save(GeoHierPojo geohier){
		LOGGER.trace("hey now in trace");
		LOGGER.debug("hey now in debug");
		LOGGER.info("hey now in info");
		LOGGER.warn("hey now in warn");
		LOGGER.error("hey now in error");
		LOGGER.fatal("hey now in fatal");
		geoserv.save(geohier);
		
		return "redirect:commoun.do?message1=saved success";
	}
	
	@RequestMapping("view")
	public ModelAndView viewGeoHier(Integer selGeoId){
		ModelAndView mv = new ModelAndView();
		GeoHierPojo viewpojo=geoserv.viewGeoHier(selGeoId);
		mv.addObject("geoHierList1", viewpojo);
		List<GeoHierPojo> list=geoserv.getGeoHierRecord();
		mv.addObject("geoHierList", list);
		mv.setViewName("home.jsp");
		return mv;
	}
	
	@RequestMapping("update")
	public String updateGeoHier(GeoHierPojo geopojo){
		geoserv.updateGeoHier(geopojo);
		
		return "redirect:commoun.do?message1=updated success";
	}
	
	@RequestMapping("delete")
	public String deleteGeoHier(GeoHierPojo geopojo){
		geoserv.deleteGeoHier(geopojo);
		
		return "redirect:commoun.do?message1=deleted success";
	}
	
	@RequestMapping("commoun")
	public ModelAndView commoun(String message1){
		ModelAndView mv=new ModelAndView();
		List<GeoHierPojo> list=geoserv.getGeoHierRecord();
		
		mv.addObject("geoHierList",list);
		mv.addObject("message", message1);
		mv.setViewName("home.jsp");
		return mv;
	}
}
