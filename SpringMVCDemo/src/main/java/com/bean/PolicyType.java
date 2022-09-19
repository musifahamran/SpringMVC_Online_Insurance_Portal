package com.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "policytype")
public class PolicyType {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="policytype_id")
	private int policyTypeID;
	
	@Column
	private String type;
	
	@Column
	private String policyCategory;
		
	public PolicyType() {}
	public PolicyType(String type) {
		this.type=type;
	}

	public int getPolicyTypeID() {
		return policyTypeID;
	}

	public void setPolicyTypeID(int policyTypeID) {
		this.policyTypeID = policyTypeID;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public String getPolicyCategory() {
		return policyCategory;
	}
	public void setPolicyCategory(String policyCategory) {
		this.policyCategory = policyCategory;
	}
	@Override
	public String toString() {
		return getType();
	}
	
	

}
