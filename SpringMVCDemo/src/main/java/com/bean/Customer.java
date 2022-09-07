package com.bean;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class Customer extends User{
	
	private int id;
	
	@NotBlank(message="Please enter first name")
	private String fname;
	@NotBlank(message="Please enter last name")
	private String lname;
	
	@NotBlank(message="Please enter email")
	@Pattern(regexp="^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$",message="Please input valid email address")
	private String email;
	
	@NotBlank(message="Please enter phone number")
	@Pattern(regexp="^([0-9]{8})$", message="Please enter 8 digit contact number")
	private String contactNo;
	
	@NotNull(message="Please select a gender")
	private String gender;	
	
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}
	
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}


}
