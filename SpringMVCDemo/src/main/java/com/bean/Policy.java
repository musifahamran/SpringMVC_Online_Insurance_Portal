package com.bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "policy")
public class Policy {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private int policy_id;
	
	@Column
	private String name;
	
	@Column
	private double price;
	
	@Column
	private PolicyType type;
	
	@Column
	private String description;
	
	@Column 
	private List<PolicyPlan> plan;
	
	
	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getPolicy_id() {
		return policy_id;
	}

	public void setPolicy_id(int policy_id) {
		this.policy_id = policy_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public PolicyType getType() {
		return type;
	}

	public void setType(PolicyType type) {
		this.type = type;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<PolicyPlan> getPlan() {
		return plan;
	}

	public void setPlan(List<PolicyPlan> plan) {
		this.plan = plan;
	}

}
