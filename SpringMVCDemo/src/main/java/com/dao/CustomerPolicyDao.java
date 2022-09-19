package com.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.Customer;
import com.bean.CustomerPolicy;
import com.bean.PolicyType;

public class CustomerPolicyDao {
	
HibernateTemplate template;
	
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}
	
	@Transactional
	public int save(Customer c1) {
		
		template.update(c1);
		return 0;
	}  
	
	public List<CustomerPolicy> getAll() {
		return template.loadAll(CustomerPolicy.class) ;
	}

	public List<PolicyType> getDistinctType(List<CustomerPolicy> customerpolicy) {
		List<PolicyType> category = new ArrayList<>(); 
		for(CustomerPolicy cp: customerpolicy) {
			if(cp.getActivePolicy().equalsIgnoreCase("Approved")) {
				category.add(cp.getPolicy().getPol_type_id());
			}
		}
		return category.stream().distinct().collect(Collectors.toList());
		
	}
	
	@Transactional
	public CustomerPolicy getById(int id) {
		return template.get(CustomerPolicy.class, id);
	}
	
	@Transactional
	public void update(CustomerPolicy customerPolicy) {
		template.update(customerPolicy);
		
	}

}
