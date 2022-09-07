package com.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Customer;
import com.bean.User;
import com.dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	UserDao userdao;//will inject dao from XML file 
	   
	@RequestMapping(value="/loginform",  method=RequestMethod.GET)    
    public String showLoginform(User usermodel){  
        return "loginform";   
    }	
	@RequestMapping(value="/checklogin",method = RequestMethod.POST)    
    public String checkLogin(@ModelAttribute("user") @Valid User user, BindingResult br, Model m){ 
		 m.addAttribute("message", "");
		 if(br.hasErrors()) {
			 return  "registerform";
		 }
		 else {
			 String role = userdao.checkLogin(user.getUsername(),user.getPassword());
		        if(role.equalsIgnoreCase("customer")) {
		        	m.addAttribute("message", user.getUsername());
		        	return "customerPortal";//will redirect to success page
		        }
		        else if(role.equalsIgnoreCase("admin")) {
		        	m.addAttribute("message", user.getUsername());
		        	return "adminPortal";//will redirect to success page
		        }
		        else {
		        	m.addAttribute("message", "Invalid Username or Password.");
		        	return "loginform";
		        }
			 
		 }
    } 
	@RequestMapping("/change-pwd")    
    public String showPasswordPage(){  
        return "changePassword";   
    }

}
