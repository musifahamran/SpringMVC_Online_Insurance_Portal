package com.bean;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "customerpolicy")
public class CustomerPolicy {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private int customerpolicy_id;
	
	@ManyToOne(targetEntity=Policy.class)
	@JoinColumn(name = "fk_policy_id", referencedColumnName = "policy_id")
	private Policy policy;
	
	@ManyToOne(targetEntity=PolicyPlan.class)
	@JoinColumn(name = "fk_policyplan_id", referencedColumnName = "plan_id")
	private PolicyPlan policyplan;
	
	@Column
	private String activePolicy;
	
	@Column
	@DateTimeFormat(pattern="dd-mm-yyyy")
	private LocalDate purchaseDate;
	
	@Column
	@DateTimeFormat(pattern="dd-mm-yyyy")
	private LocalDate endDate;
	
	@Column
	private String comment;

	public int getCustomerpolicy_id() {
		return customerpolicy_id;
	}

	public void setCustomerpolicy_id(int customerpolicy_id) {
		this.customerpolicy_id = customerpolicy_id;
	}

	public Policy getPolicy() {
		return policy;
	}

	public void setPolicy(Policy policy) {
		this.policy = policy;
	}

	public String getActivePolicy() {
		return activePolicy;
	}

	public void setActivePolicy(String activePolicy) {
		this.activePolicy = activePolicy;
	}

	public PolicyPlan getPolicyplan() {
		return policyplan;
	}

	public void setPolicyplan(PolicyPlan policyPlan2) {
		this.policyplan = policyPlan2;
	}

	public LocalDate getPurchaseDate() {
		return purchaseDate;
	}

	public void setPurchaseDate(LocalDate purchaseDate) {
		this.purchaseDate = purchaseDate;
	}

	public LocalDate getEndDate() {
		return endDate;
	}

	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
}
