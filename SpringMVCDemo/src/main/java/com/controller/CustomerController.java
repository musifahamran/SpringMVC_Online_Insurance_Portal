package com.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Customer;
import com.bean.User;
import com.dao.CustomerDao;

@Controller
public class CustomerController {
	
	@Autowired    
	CustomerDao customerdao;
	
	@RequestMapping("/registerform")    
    public String showRegisterform(Model m){    
        m.addAttribute("command", new Customer());  
        return "registerform";   
    }
	@RequestMapping("/customerPortal")    
    public String logoutPage(){  
        return "customerPortal";   
    }
	@RequestMapping("/my-policy")    
    public String customerPolicy(){  
        return "customerViewPolicy";   
    }
	@RequestMapping("/my-claim")    
    public String customerViewClaim(){  
        return "customerViewClaim";   
    }
	@RequestMapping("/customer-support")    
    public String customerSupport(){  
        return "customerSupport";   
    }
	@RequestMapping("/purchase-policy")    
    public String customerAddPolicy(){  
        return "customerAddPolicy";   
    }
	@RequestMapping("/make-claim")    
    public String customerAddClaim(){  
        return "customerAddClaim";   
    }
	@RequestMapping("/update-plan")    
    public String customerUpdatePolicy(){  
        return "customerUpdatePolicy";   
    }
	 @RequestMapping(value="/save",method = RequestMethod.POST)    
	    public String save(@Valid @ModelAttribute("customer") Customer customer, BindingResult br, RedirectAttributes redirAttrs){   
		 if(br.hasErrors()) {
			 redirAttrs.addFlashAttribute("org.springframework.validation.BindingResult.user", br);
			 redirAttrs.addFlashAttribute("customer", customer);
			 return  "redirect:registerform";
		 }
		 else {
			 customerdao.save(customer);
			 redirAttrs.addFlashAttribute("message", "You have registered successfully!");
		 }
	        
	       return "redirect:registerform";//will redirect to register form    
	 } 

}
