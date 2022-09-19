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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderColumn;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.Min;

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
	@Min(value=1, message="Price must be greater than 0")  
	private double price;
	
	@ManyToOne(targetEntity=PolicyType.class)
	@JoinColumn(name = "pol_type_id", referencedColumnName = "policytype_id")
	private PolicyType pol_type_id;
	
	@Column
	private String description;
	
	@OneToMany(fetch = FetchType.EAGER,targetEntity=PolicyPlan.class,cascade=CascadeType.ALL)
	@JoinColumn(name="pid") 
	@OrderColumn(name="type")  
	private List<PolicyPlan> plan;
	
	@Column
	private String policyStatus;
	
	
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

	
	public PolicyType getPol_type_id() {
		return pol_type_id;
	}

	public void setPol_type_id(PolicyType pol_type_id) {
		this.pol_type_id = pol_type_id;
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

	public String getPolicyStatus() {
		return policyStatus;
	}

	public void setPolicyStatus(String policyStatus) {
		this.policyStatus = policyStatus;
	}
	
}
