package com.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.Customer;
import org.springframework.beans.factory.annotation.Autowired;

public class CustomerDao {
	
	HibernateTemplate template;
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}  

	
	public int save(Customer p){    
	    String sql="insert into customer_table(cus_fname,cus_lname,cus_username, cus_password, cus_email,cus_contactNo,cus_gender) "
	    		+ "values('"+p.getFname()+"', '"+p.getLname()+"','"+p.getUsername()+ "', '"+p.getPassword()+ "','"+p.getEmail()+ "','"+p.getContactNo()
	    		+ "','"+p.getLname()+"')";    
	    return 1;    
	} 

}
