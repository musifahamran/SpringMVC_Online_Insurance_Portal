package com.controller;

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
	@RequestMapping("/logout")    
    public String logoutPage(){  
        return "homePage";   
    }

}
