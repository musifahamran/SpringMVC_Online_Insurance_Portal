package com.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.Customer;
import com.bean.CustomerPolicy;
import com.bean.Policy;
import com.bean.PolicyPlan;

public class PolicyPlanDao {
	HibernateTemplate template;
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}  
	
	public ArrayList<PolicyPlan> add(String baseRate, String baseCoverage, String baseDuration,String premiumRate,
			String premiumCoverage, String premiumDuration, String premiumCharge) {
		PolicyPlan basePlan = new PolicyPlan();
		basePlan.setPlan_type("Basic");
		basePlan.setRate(Float.parseFloat(baseRate));
		basePlan.setCoverage(Double.parseDouble(baseCoverage));
		basePlan.setDuration(Integer.parseInt(baseDuration));
		
		PolicyPlan premiumPlan = new PolicyPlan();
		premiumPlan.setPlan_type("Premium");
		premiumPlan.setRate(Float.parseFloat(premiumRate));
		premiumPlan.setCoverage(Double.parseDouble(premiumCoverage));
		premiumPlan.setDuration(Integer.parseInt(premiumDuration));
		premiumPlan.setAdditional_charge(Double.parseDouble(premiumCharge));
		ArrayList<PolicyPlan> plans = new ArrayList<PolicyPlan>();
		plans.add(basePlan);
		plans.add(premiumPlan);
		return plans;
	}
	
	@Transactional
	public List<PolicyPlan> getById(int id) {
		PolicyPlan p1 = new PolicyPlan();
		p1.setPlan_id(id);
		return template.findByExample(p1, 0, 2);
	}

	public List<PolicyPlan> getAll() {
		return template.loadAll(PolicyPlan.class);
	}
	
	@Transactional
	public PolicyPlan getById(Policy policy, String policyPlan) {
		PolicyPlan p1 = policy.getPlan().get(Integer.parseInt(policyPlan));
		return p1;
	}
	@Transactional
	public PolicyPlan getPlan(int id) {
		return template.get(PolicyPlan.class, id);
	}
	@Transactional
	public void update(Customer c1, int customerPolicyID, PolicyPlan p) {
		for(CustomerPolicy customerPolicy:c1.getCustomerpolicy()) {
			if(customerPolicy.getCustomerpolicy_id() == customerPolicyID) {
				customerPolicy.setPolicyplan(p);
			}
		}
		template.update(c1);
		
	}

	public List<PolicyPlan> updatePlans(List<PolicyPlan> plans, String baseRate, String baseCoverage,
			String baseDuration, String premiumRate, String premiumCoverage, String premiumDuration,
			String premiumCharge) {
			//Set the basic plan details
			plans.get(0).setRate(Float.parseFloat(baseRate));
			plans.get(0).setCoverage(Float.parseFloat(baseCoverage));
			plans.get(0).setDuration(Integer.parseInt(baseDuration));
			
			//Set premium plan details
			plans.get(1).setRate(Float.parseFloat(premiumRate));
			plans.get(1).setCoverage(Float.parseFloat(premiumCoverage));
			plans.get(1).setDuration(Integer.parseInt(premiumDuration));
			plans.get(1).setAdditional_charge(Float.parseFloat(premiumCharge));
				
		return plans;
	}

}
