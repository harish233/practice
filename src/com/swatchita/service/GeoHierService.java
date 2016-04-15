package com.swatchita.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swatchita.DAO.GeohierDAO;
import com.swatchita.pojo.GeoHierPojo;

@Service
public class GeoHierService {

	@Autowired
	private GeohierDAO geodao;
	
	public GeoHierPojo save(GeoHierPojo geohier){
		return geodao.save(geohier);
	}
	
	public List<GeoHierPojo> getGeoHierRecord(){
		return geodao.getGeoHierRecord();
	}
	
	public GeoHierPojo viewGeoHier(Integer id){
		return geodao.viewGeoHier(id);
	}
	
	public void updateGeoHier(GeoHierPojo geopojo){
		geodao.updateGeoHier(geopojo);
	}
	
	public void deleteGeoHier(GeoHierPojo geopojo){
		geodao.deleteGeoHier(geopojo);
	}
}
