package com.bean;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class User {
	
	private int id;
	private String role;
	
	@NotBlank(message="Please enter username")
	private String username;
	
	@NotBlank(message="Please enter password")
	@Size(min=8,message="Password length min is 8 characters")
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserID() {
		return username;
	}

	public void setUserID(String userID) {
		this.username = userID;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setRole(String accType) {
		this.role=accType;
		
	}
	public String getRole() {
		return role;
	}
	

}
