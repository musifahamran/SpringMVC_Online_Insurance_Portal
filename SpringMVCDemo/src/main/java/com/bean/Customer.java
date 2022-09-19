package com.bean;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OrderColumn;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

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
	@Column(name="cus_email", unique =true)
	private String email;
	
	@NotBlank(message="Please enter phone number")
	@Pattern(regexp="^([0-9]{8})$", message="Please enter 8 digit contact number")
	@Column(name="cus_contactNo", unique =true)
	private String contactNo;
	
	@NotNull(message="Please select a gender")
	@Column(name="cus_gender")
	private String gender;
	
	@Column(name="cus_customerType")
	private String customerType;
	
	@Column(name="cus_companyName")
	private String companyName;
	
	@Column(name="cus_address")
	private String address;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(targetEntity=CustomerPolicy.class,cascade=CascadeType.ALL)
	@JoinColumn(name="cid") 
	private List<CustomerPolicy> customerpolicy;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(targetEntity=Claim.class,cascade=CascadeType.ALL)
	@JoinColumn(name="claim_customer_id") 
	private List<Claim> claim;
	
	
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

	public String getCustomerType() {
		return customerType;
	}

	public void setCustomerType(String customerType) {
		this.customerType = customerType;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<CustomerPolicy> getCustomerpolicy() {
		return customerpolicy;
	}

	public void setCustomerpolicy(List<CustomerPolicy>  customer_policy) {
		this.customerpolicy = customer_policy;
	}

	public List<Claim> getClaim() {
		return claim;
	}

	public void setClaim(List<Claim> claim) {
		this.claim = claim;
	}
	

}
