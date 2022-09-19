package com.dao;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.Customer;
import com.bean.PolicyType;

public class PolicyTypeDao {
	
HibernateTemplate template; 
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}  
	
	public List<PolicyType> getAll() {
		// TODO Auto-generated method stub
		return template.loadAll(PolicyType.class);
	}

	public PolicyType getType(String type) {
		PolicyType t1 = new PolicyType(type);
		List<PolicyType> category = template.findByExample(t1, 0,1);
		return category.get(0);
	}
	public String getCategory(int id) {
		PolicyType t1 = template.get(PolicyType.class, id);
		return t1.getType();
	}
}
