package com.dao;

import java.io.Serializable;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.Claim;

public class ClaimDao {
	
	HibernateTemplate template;
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	} 
	
	@Transactional
    public int save(Claim claim) {
        return (int) template.save(claim);
    }
	
	@Transactional
	public Claim getById(int id) {
		// TODO Auto-generated method stub
		return template.get(Claim.class, id);
	}
	
	@Transactional
	public void update(Claim claim) {
		template.update(claim);
		
	}
	

}
