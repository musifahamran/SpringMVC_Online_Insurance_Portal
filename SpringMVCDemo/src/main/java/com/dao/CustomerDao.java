package com.dao;


import org.springframework.jdbc.core.JdbcTemplate;

import com.bean.Customer;

public class CustomerDao {
	JdbcTemplate template;    

 
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}  

	
	public int save(Customer p){    
	    String sql="insert into customer_table(cus_fname,cus_lname,cus_username, cus_password, cus_email,cus_contactNo,cus_gender) "
	    		+ "values('"+p.getFname()+"', '"+p.getLname()+"','"+p.getUsername()+ "', '"+p.getPassword()+ "','"+p.getEmail()+ "','"+p.getContactNo()
	    		+ "','"+p.getLname()+"')";    
	    return template.update(sql);    
	} 

}
