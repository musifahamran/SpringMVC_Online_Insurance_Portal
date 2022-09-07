package com.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "customer")
@PrimaryKeyJoinColumn(name="user_id")  
public class Customer extends User{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cus_id")
	private int id;
	
	@NotBlank(message="Please enter first name")
	@Column(name="cus_fname")
	private String fname;
	
	@NotBlank(message="Please enter last name")
	@Column(name="cus_lname")
	private String lname;
	
	@NotBlank(message="Please enter email")
	@Pattern(regexp="^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$",message="Please input valid email address")
	@Column(name="cus_email")
	private String email;
	
	@NotBlank(message="Please enter phone number")
	@Pattern(regexp="^([0-9]{8})$", message="Please enter 8 digit contact number")
	@Column(name="cus_contactNo")
	private String contactNo;
	
	@NotNull(message="Please select a gender")
	@Column(name="cus_gender")
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
