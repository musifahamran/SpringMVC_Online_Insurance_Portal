package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
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
