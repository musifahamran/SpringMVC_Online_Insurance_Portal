package com.dao;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.bean.Customer;
import org.springframework.beans.factory.annotation.Autowired;

@Repository
@Transactional
public class CustomerDao {
	
	HibernateTemplate template;
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}  
	
	@Transactional
	public void add(Customer newCustomer){
		if(newCustomer.getCustomerType().equalsIgnoreCase("personal") || newCustomer.getCustomerType().equalsIgnoreCase("corporate")) {
			newCustomer.setRole("customer");
		}
		template.persist(newCustomer); 
	} 

}
