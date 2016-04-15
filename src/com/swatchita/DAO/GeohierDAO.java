package com.swatchita.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.swatchita.pojo.GeoHierPojo;

@Repository
public class GeohierDAO {

	@Autowired
	private HibernateTemplate template;
	
	
	public GeoHierPojo save(GeoHierPojo geohier){
		template.save(geohier);
		return geohier;
	}
	
	public List<GeoHierPojo> getGeoHierRecord(){
		return template.find("from GeoHierPojo");
	}
	
	public GeoHierPojo viewGeoHier(Integer id){
		return template.get(GeoHierPojo.class, id);
	}
	
	public void updateGeoHier(GeoHierPojo geopojo){
		template.update(geopojo);
	}

	public void deleteGeoHier(GeoHierPojo geopojo){
		template.delete(geopojo);
	}
}
