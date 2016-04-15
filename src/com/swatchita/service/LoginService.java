package com.swatchita.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swatchita.DAO.LoginDAO;
import com.swatchita.pojo.LogPojo;

@Service
public class LoginService {
	
	@Autowired
	private LoginDAO logDao;
	
	public boolean loginService(LogPojo lp){
		return logDao.loginDAO(lp);
		 
	}
}
