package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.User;

@Controller
public class HomeController {
	
	@RequestMapping("/aboutus")    
    public String showAboutUsPage(){  
        return "aboutus";   
    }
	@RequestMapping("/support")    
    public String showSupportPage(){  
        return "support";   
    }
	@RequestMapping("/homePage")    
    public String showHomePage(){  
        return "homePage";   
    }
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
	
	@RequestMapping("/logout")    
    public String logoutPage(HttpServletRequest request){  
		 HttpSession session = request.getSession(false);
		    if (session != null) {
		        session.invalidate();
		    }
        return "homePage";   
    }
	

}
