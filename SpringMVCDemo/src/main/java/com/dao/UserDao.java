package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.bean.User;

public class UserDao {
	JdbcTemplate template;    
	@Autowired    
 
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}  

	public List<User> checkLogin(String username, String password) {
		 String sql="select * from user_table where user_username=? AND user_password=?";
		 List<User> users= template.query(sql, new Object[]{username,password},new RowMapper<User>(){
			 public User mapRow(ResultSet rs, int row) throws SQLException{
				 User u1 = new User();
				 u1.setRole(rs.getString(4));
				return u1;
			 }
			 
		 });
		 return users;
	}  

}
