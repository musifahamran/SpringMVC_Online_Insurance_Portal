package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.AdminDao;
import com.dao.CustomerDao;

@Controller
public class AdminController {
	
	@Autowired    
	AdminDao admindao;
	
	@RequestMapping("/new-policy")    
    public String showAddPolicyPage(){  
        return "adminAddPolicy";   
    }
	@RequestMapping("/adminPortal")    
    public String showAdminPortal(){  
        return "adminPortal";   
    }
	@RequestMapping("/update-policy")    
    public String showUpdatePolicyPage(){  
        return "adminUpdatePolicy";   
    }
	@RequestMapping("/view-customer")    
    public String showCustomerListPage(){  
        return "adminViewCustomer";   
    }
	@RequestMapping("/view-claim")    
    public String showClaimListPage(){  
        return "adminViewClaim";   
    }
	@RequestMapping("/view-profile")    
    public String showAdminProfilePage(){  
        return "adminProfile";   
    }


}
