package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.User;

@Controller
public class PolicyController {
	
	@RequestMapping("/insurancepage")    
    public String showLoginform(){   
        return "insurancepage";   
    } 
	@RequestMapping("/lifeInsurance")    
    public String showlifeInsurance(){  
        return "lifeInsurance";   
    }
	@RequestMapping("/healthInsurance")    
    public String showhealthInsurance(){  
        return "healthInsurance";   
    }
	@RequestMapping("/vehicleInsurance")    
    public String showvehicleInsurance(){  
        return "vehicleInsurance";   
    }
	@RequestMapping("/travelInsurance")    
    public String showtravelInsurance(){  
        return "travelInsurance";   
    }
	@RequestMapping("/schoolInsurance")    
    public String showschoolInsurance(){  
        return "schoolInsurance";   
    }
	@RequestMapping("/commercialInsurance")    
    public String showcommercialInsurance(){  
        return "commercialInsurance";   
    }

}
