package com.swatchita.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.swatchita.pojo.LogPojo;

@Repository
public class LoginDAO {
	
	@Autowired
	private HibernateTemplate template;
	
	
	public boolean loginDAO(LogPojo lp){
		List<LogPojo> list=template.find("from LogPojo where user=? and password=?", lp.getUser(),lp.getPassword());
		if(list!=null && list.size()>0){
			return true;
		}
		else{
			return false;
		}
	}
}
