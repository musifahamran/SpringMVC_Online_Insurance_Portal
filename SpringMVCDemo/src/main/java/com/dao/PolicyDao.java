package com.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.Customer;
import com.bean.Policy;
import com.bean.PolicyPlan;
import com.bean.PolicyType;

public class PolicyDao {
	
HibernateTemplate template; 
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}  
	
	@Transactional
	public void add(Policy policy) {
		template.persist(policy); 
	}

	public List<Policy> getAll() {
		return template.loadAll(Policy.class);
	}
	
	@Transactional
	public Policy getById(int id) {
		return template.get(Policy.class,id);
	}
	
	public Policy setPolicyPlan(Policy policy, List<PolicyPlan> policyPlanList) {
		List<PolicyPlan> currPlan = policy.getPlan();
		Iterator<PolicyPlan> itr = currPlan.iterator();
		while(itr.hasNext()) {
			PolicyPlan a=itr.next();  
			 System.out.println(a.getDuration()+":"+a.getRate());  
		}
		return policy;
	}
	
	@Transactional
	public void update(Policy policy) {
		template.update(policy);
		
	}
	
	@Transactional
	public void delete(Policy policy) {
		template.delete(policy);
		
	}
	@Transactional
	public String getPolicyName(int id) {
		Policy p1 = template.get(Policy.class, id);;
		return p1.getName();
	}

}
