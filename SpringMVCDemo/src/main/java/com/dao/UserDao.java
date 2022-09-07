package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.User;

public class UserDao {
	    
	HibernateTemplate template; 
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}  

	public String checkLogin(String username, String password) {
		User u1 = new User(username,password);
		List<User> userList = template.findByExample(u1, 0,1);
		 return userList.get(0).getRole();
	}
	

}
