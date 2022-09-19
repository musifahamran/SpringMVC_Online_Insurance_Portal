package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.Admin;
import com.bean.Customer;
import com.bean.User;

public class UserDao {
	    
	HibernateTemplate template; 
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}  

	public User checkLogin(String username, String password) {
		User u1 = new User(username,password);
		
		try {
			List<User> userList = template.findByExample(u1, 0,1);
			if(userList.get(0).getPassword().equals(password)) {
				return userList.get(0);
			}
			return u1;
		}
		catch(IndexOutOfBoundsException e) {
			return u1;
		}
		
	}
	
	@Transactional
	public List<User> getAll() {
		return template.loadAll(User.class);
	}
	
	@Transactional
	public User getById(int id) {
		return template.get(User.class, id);
	}
	@Transactional
	public void update(User u1) {
		template.update(u1);
		
	}

	public User checkUser(String email) {
		User u1 = null;
		List<Customer> customers = template.loadAll(Customer.class);
		List<Admin> admins = template.loadAll(Admin.class);
		for(Customer c1: customers) {
			if(c1.getEmail().equals(email)) {
				u1 = new User();
				u1.setPassword(c1.getPassword());
				u1.setUsername(c1.getUsername());
				u1.setRole(c1.getRole());
				u1.setId(c1.getId());
				break;
			}
		}
		for(Admin a1: admins) {
			if(a1.getEmail().equals(email)) {
				u1 = new User();
				u1.setPassword(a1.getPassword());
				u1.setUsername(a1.getUsername());
				u1.setRole(a1.getRole());
				u1.setId(a1.getId());
				break;
			}
		}
		
		return u1;
	}
	

}
