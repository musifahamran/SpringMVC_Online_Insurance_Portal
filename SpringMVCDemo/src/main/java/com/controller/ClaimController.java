package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClaimController {

	@RequestMapping("/lifeClaim")    
    public String showlifeClaim(){  
        return "lifeClaim";   
    }
	@RequestMapping("/healthClaim")    
    public String showhealthClaim(){  
        return "healthClaim";   
    }
	@RequestMapping("/vehicleClaim")    
    public String showvehicleClaim(){  
        return "vehicleClaim";   
    }
	@RequestMapping("/travelClaim")    
    public String showtravelClaim(){  
        return "travelClaim";   
    }
	@RequestMapping("/schoolClaim")    
    public String showschoolClaim(){  
        return "schoolClaim";   
    }
	@RequestMapping("/commercialClaim")    
    public String showcommercialInsurance(){  
        return "commercialClaim";   
    }
}
