package com.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	

}
