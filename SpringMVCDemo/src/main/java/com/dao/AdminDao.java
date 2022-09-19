package com.dao;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.Admin;

public class AdminDao {
	
	HibernateTemplate template; 
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}
	
	@Transactional
	public Admin getById(int id) {
		return template.get(Admin.class, id);
	}
	
	@Transactional
	public void update(Admin admin) {
		template.update(admin);
		
	}  
}
