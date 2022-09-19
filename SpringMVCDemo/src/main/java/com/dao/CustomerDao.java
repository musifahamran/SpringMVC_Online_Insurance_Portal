package com.dao;


import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.bean.Customer;
import com.bean.Policy;

import org.springframework.beans.factory.annotation.Autowired;

@Repository
public class CustomerDao {
	
	HibernateTemplate template;
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}  
	public List<String> check(Customer customer) {
		List<Customer> customerList = this.getAll();
		List<String> invalid = new ArrayList<>();
		
		//Checking for duplicate username, contactNo, email Address
		for(Customer c1: customerList) {	
			if(customer.getUsername().equalsIgnoreCase(c1.getUsername())) {
				invalid.add("Username is already in use. Please use another.");
			}
			if(customer.getEmail().equalsIgnoreCase(c1.getEmail())) {
				invalid.add("Email is in use. Please register another.");
			}
			if(customer.getContactNo().equals(c1.getContactNo())) {
				invalid.add("Contact number is in use. Please use another.");
			}
		}
		return invalid;
	}
	@Transactional
	public void add(Customer newCustomer){
		
		if(newCustomer.getCustomerType().equalsIgnoreCase("personal") || newCustomer.getCustomerType().equalsIgnoreCase("corporate")) {
			newCustomer.setRole("customer");
		}
		template.persist(newCustomer); 
	}
	
	public List<Customer> getAll() {
		return template.loadAll(Customer.class) ;
	}
	
	@Transactional
	public Customer getById(int id) {
		return template.get(Customer.class, id);
	}
	
	@Transactional
	public void delete(Customer customer) {
		template.delete(customer);
		
	}
	
	@Transactional
	public void update(Customer obj) {
		template.update(obj);
		
	}

	 

}
