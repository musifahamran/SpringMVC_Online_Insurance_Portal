package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
    public String checkLogin(@ModelAttribute("user") @Valid User user, BindingResult br, Model m, HttpSession session){ 
		 m.addAttribute("message", "");
		 m.addAttribute("invalidMessage", "");
		 if(br.hasErrors()) {
			 return  "loginform";
		 }
		 else {
			 User role = userdao.checkLogin(user.getUsername(),user.getPassword());
			 	if(role.getRole() == null) {
			        m.addAttribute("invalidMessage", "Invalid Username or Password.");
			 	}
			 	else if(role.getRole().equalsIgnoreCase("customer")) {
		        	m.addAttribute("user",role);
		        	session.setAttribute("currentUser", role);
		        	return "redirect:customerPortal";//will redirect to success page
		        }
		        else if(role.getRole().equalsIgnoreCase("admin")) {
		        	m.addAttribute("message", user.getUsername());
		        	m.addAttribute("user",role);
		        	session.setAttribute("currentUser", role);
		        	return "redirect:adminPortal";//will redirect to success page
		        }

		 }
		 return "loginform";
    }
	@RequestMapping("/change-adminPwd")    
    public String showAdminPasswordPage(Model m, HttpSession session){  
		m.addAttribute(session);
        return "adminChangePassword";   
    }
	@RequestMapping("/update-admin-password")
	 public String changeAdminPassword(HttpSession session, @RequestParam("password1") String pwdEntry){
		User u1 = (User) session.getAttribute("currentUser");
		u1.setPassword(pwdEntry);
		userdao.update(u1);
		return "redirect:change-adminPwd";
	}
	@RequestMapping("/change-pwd")    
    public String showCustomerPasswordPage(Model m, HttpSession session){  
		m.addAttribute(session);
        return "customerChangePassword";   
    }
	
	@RequestMapping("/update-password")
	 public String changeCustomerPassword(HttpSession session, @RequestParam("password1") String pwdEntry){
		User u1 = (User) session.getAttribute("currentUser");
		u1.setPassword(pwdEntry);
		userdao.update(u1);
		return "redirect:change-pwd";
	}
	@RequestMapping("/forgot-pwd")
	public String forgotPwdPage() {
		return "forgotPassword";
	}
	@RequestMapping(value="/update-forgotPwd",  method=RequestMethod.POST)
	public String updateForgotPwdPage(@RequestParam("email") String email, HttpSession session, RedirectAttributes redirArr) {
		User userExist = userdao.checkUser(email);
		
		if(userExist!=null) {
			session.setAttribute("forgotUser", userExist);
			return "forgotPasswordUpdate";
		}
		redirArr.addFlashAttribute("message", "Email does not exist!");
		return "redirect:/forgot-pwd";
	}
	@RequestMapping(value="/update-passwordUser", method=RequestMethod.POST)
	public String updateUserPassword(@RequestParam("password1")String password, HttpSession session,  RedirectAttributes redirArr) {
		User u1 = (User) session.getAttribute("forgotUser");
		u1.setPassword(password);
		userdao.update(u1);
		redirArr.addFlashAttribute("updateMessage", "You have changed your password!");
		return "redirect:/loginform";
		
	}
}
