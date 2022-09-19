package com.dao;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.ClaimDocument;

public class ClaimDocumentDao {
	
HibernateTemplate template;
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}

	public List<ClaimDocument> getById(int id) {
		ClaimDocument doc = new ClaimDocument();
		
		return null;
	} 

}
