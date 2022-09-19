package com.bean;

import java.io.Serializable;

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
@Table(name = "admin_table")
@PrimaryKeyJoinColumn(name="user_id")  
public class Admin extends User implements Serializable{
	
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name="admin_id")
		private int id;
				
		@Column(name="admin_fname")
		private String fname;
		
		@Column(name="admin_lname")
		private String lname;
		
		@Column(name="admin_email", unique =true)
		private String email;

		@Column(name="admin_contactNo", unique =true)
		private String contactNo;
		
		@Column(name="admin_gender")
		private String gender;
		
		@Column(name="admin_address")
		private String address;
		
		public Admin() {}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

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

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}		
}
