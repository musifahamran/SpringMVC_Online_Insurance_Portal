package com.dao;

import org.springframework.orm.hibernate5.HibernateTemplate;

public class AdminDao {
	
	HibernateTemplate template; 
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}  
}
