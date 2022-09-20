package com.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Admin;
import com.bean.Claim;
import com.bean.ClaimDocument;
import com.bean.Customer;
import com.bean.CustomerPolicy;
import com.bean.Email;
import com.bean.Policy;
import com.bean.PolicyPlan;
import com.bean.PolicyType;
import com.bean.User;
import com.dao.ClaimDao;
import com.dao.CustomerDao;
import com.dao.CustomerPolicyDao;
import com.dao.EmailDao;
import com.dao.PolicyDao;
import com.dao.PolicyPlanDao;
import com.dao.PolicyTypeDao;

@Controller
public class CustomerController {
	
	@Autowired    
	CustomerDao customerdao;
	
	@Autowired 
	PolicyTypeDao policytypedao;
	
	@Autowired
	PolicyDao policydao;
	
	@Autowired
	PolicyPlanDao policyplandao;
	
	@Autowired
	CustomerPolicyDao customerpolicydao;
	
	@Autowired
	ClaimDao claimdao;
	
	@Autowired
	EmailDao emaildao;
	
	@RequestMapping(value="/registerform" ,method=RequestMethod.GET)    
    public String showRegisterform(Customer customermodel, Model m){ 
        return "registerform";   
    }
	@RequestMapping("/customerPortal")    
    public String logoutPage(HttpServletRequest request, Model m){ 
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Customer c1 = customerdao.getById(u1.getId());
		m.addAttribute("customerUser", c1);
        return "customerPortal";   
    }
	@RequestMapping(value="/my-profile" , method=RequestMethod.GET)    
    public String showAdminProfilePage(Model m, HttpServletRequest request){ 
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Customer customer = customerdao.getById(u1.getId());
		m.addAttribute("customerUser", customer);
        return "customerProfile";   
    }
	@RequestMapping("/edit-myprofile")
	public String editProfilePage(Model m, HttpServletRequest request){  
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Customer customer = customerdao.getById(u1.getId());
		m.addAttribute("customerUser", customer);
        return "customerEditProfile";   
    }
	@RequestMapping(value="/update-customer-profile", method=RequestMethod.POST)
	public String saveProfilePage(@RequestParam("customer_fname") String fname, @RequestParam("customer_lname") String lname,
									@RequestParam("customer_address") String address, @RequestParam("customer_contactNo") String contactNo,
									@RequestParam("customer_email") String email,  HttpServletRequest request, RedirectAttributes redirArr){
		 User u1 = (User) request.getSession().getAttribute("currentUser");
		 Customer customer = customerdao.getById(u1.getId());
		 
		 //Set updated details to customer bean
		 customer.setContactNo(contactNo);
		 customer.setEmail(email);
		 customer.setAddress(address);
		 customer.setFname(fname);
		 customer.setLname(lname);
		 
		 customerdao.update(customer);
		 redirArr.addFlashAttribute("updateMessage", "You have updated your profile!");
		 return "redirect:my-profile"; 
	}
	@RequestMapping("/my-policy")    
    public String customerPolicyPage(HttpServletRequest request, Model m){  
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Customer c1 = customerdao.getById(u1.getId());
		m.addAttribute("myPolicy", c1);
        return "customerViewPolicy";   
    }
	@RequestMapping("/my-claim")    
    public String customerViewClaimPage(Customer customer, Model m, HttpServletRequest request){ 
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Customer c1 = customerdao.getById(u1.getId());
		
		//Retrieve all claims from current customer
		List<Claim> myClaim = c1.getClaim();
		m.addAttribute("customerObj", c1);
		m.addAttribute("myClaim",myClaim );
        return "customerViewClaim";   
    }
	@RequestMapping("/customer-support")    
    public String customerSupportPage(){  
        return "customerSupport";   
    }
	@RequestMapping(value="/purchase-policy",method=RequestMethod.GET)    
    public String customerAddPolicyPage(Policy policymodel, Model m, HttpServletRequest request){ 
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Customer c1 = customerdao.getById(u1.getId());
		
		//Retrieve details of all policies to be set in view
		List<PolicyType> policyTypes = policytypedao.getAll();
		List<Policy> policyList = policydao.getAll();
		m.addAttribute("policyTypes", policyTypes);
		m.addAttribute("policyList", policyList);
		m.addAttribute("customerType", c1.getCustomerType());
        return "customerAddPolicy";   
    }
	@RequestMapping("/make-claim")    
    public String customerAddClaimPage(Claim claimModel, Model m, HttpServletRequest request){  
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Customer c1 = customerdao.getById(u1.getId());
		
		//Filter distinct policy category for user to select
		List<PolicyType> p1 = customerpolicydao.getDistinctType(c1.getCustomerpolicy());
		m.addAttribute("claim", claimModel = new Claim());
		m.addAttribute("customerObj", c1);
		m.addAttribute("policyCatList", p1);
        return "customerAddClaim";   
    }
	@RequestMapping("/editClaim/{id}")    
    public String customerUpdateClaimPage(@PathVariable int id,Model m){  
		Claim claim = claimdao.getById(id);
		m.addAttribute("currentClaim",claim);
        return "customerUpdateClaim";   
    }
	@RequestMapping("/editClaim/update-claimApp/{id}")    
    public String customerUpdateClaim(@PathVariable int id, @RequestParam("file[]") MultipartFile[] fileUpload, HttpServletRequest request,
    		RedirectAttributes redirArr) throws IOException{  
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Customer c1 = customerdao.getById(u1.getId());
		
		//Get claim to update files uploaded by user
		Claim claim = claimdao.getById(id);
		claim.setClaimStatus("Pending review");
		 if (fileUpload != null) {
	            for (MultipartFile aFile : fileUpload){ 
	            	ClaimDocument doc = new ClaimDocument();
	            	doc.setContent(aFile.getBytes());
	            	doc.setName(aFile.getOriginalFilename());
	            	claim.getClaimDocument().add(doc);
	                System.out.println("Saving file: " + aFile.getOriginalFilename());
	            }
		 }
		claimdao.update(claim);
		 redirArr.addFlashAttribute("successMessageHeader", "You have updated your application");
         redirArr.addFlashAttribute("successMessage", "Kindly wait for our response on your claim.");
        return "redirect:/my-claim";   
    }
	@RequestMapping("/upgrade-plan/{id}")    
    public String customerUpdatePolicyPage(@PathVariable int id,  HttpServletRequest request, RedirectAttributes redirArr) throws MessagingException{  
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Customer c1 = customerdao.getById(u1.getId());
		
		//Get the customer's policy to update the plan
		CustomerPolicy cp1 = customerpolicydao.getById(id);
		PolicyPlan p1 = policyplandao.getPlan(cp1.getPolicyplan().getPlan_id()+1);
		redirArr.addFlashAttribute("updateMessage", "You have successfully upgraded your policy plan for " +cp1.getPolicy().getName() + " !");
		policyplandao.update(c1,id, p1);
		
		//Send an email to customer's email address
		String emailContent = emaildao.upgradePlan(c1,id, p1);
	 	emaildao.sendMessage(c1.getEmail(),"Policy Plan Upgrade", emailContent);
        return "redirect:/my-policy";   
    }
	 @RequestMapping(value="/save",method = RequestMethod.POST)    
	    public String save( @ModelAttribute("customer") @Valid Customer customer, BindingResult br, Model m, RedirectAttributes rediAttrs) throws MessagingException{
		 m.addAttribute("message", "");
		 m.addAttribute("successMessage", "");
		 m.addAttribute("invalidMessage", "");
		 if(br.hasErrors()) {
			 
			 return  "registerform";
		 }
		 else {
			 List<String> invalidMessage = customerdao.check(customer);
			 if(invalidMessage == null) {
				 customerdao.add(customer);
				 String emailContent = emaildao.successRegistration(customer);
				 emaildao.sendMessage(customer.getEmail(),"Welcome to Prodexa", emailContent);
				 rediAttrs.addFlashAttribute("successMessage", "You have registered successfully!");
			 }
			 else {
				 m.addAttribute("invalidMessage", invalidMessage);
				 return  "registerform";
			 }
			
			 return "redirect:/registerform";
		 }
	         
	 }
	 @RequestMapping(value="/buy-policy", method=RequestMethod.POST)
	 public String customerAddPolicy(@RequestParam("policy_description") String description, @RequestParam("plan_duration") String duration,
			 @RequestParam("policyPlan") String policyPlan, @RequestParam("policyName") String name,
				@ModelAttribute("policy") Policy policyObj, HttpServletRequest request, RedirectAttributes redirArr) throws MessagingException{  
		 	User u1 = (User) request.getSession().getAttribute("currentUser");
			Customer c1 = customerdao.getById(u1.getId());
			
			List<CustomerPolicy> customerPolicyList = c1.getCustomerpolicy();
		 	CustomerPolicy customer_policy = new CustomerPolicy();
		 	
		 	customer_policy.setActivePolicy("Pending");
		 	customer_policy.setPurchaseDate(LocalDate.now());
		 	customer_policy.setEndDate(LocalDate.now().plusYears(Integer.parseInt(duration)));
		 	customer_policy.setPolicy(policydao.getById(Integer.parseInt(name)));
		 	customer_policy.setPolicyplan(policyplandao.getById(customer_policy.getPolicy(), policyPlan));
		 	customerPolicyList.add(customer_policy);
		 	
		 	c1.setCustomerpolicy(customerPolicyList);
		 	redirArr.addFlashAttribute("successMessage", "Kindly wait for our response on your purchase.");
		 	int i = customerpolicydao.save(c1);
		 	String emailContent = emaildao.policyPurchaseMssg(c1,customer_policy.getPolicy().getName());
		 	emaildao.sendMessage(c1.getEmail(),"Policy Purchase", emailContent);

	        return "redirect:purchase-policy";   
	    }
	 
	 @RequestMapping(value="/submit-claim", method=RequestMethod.POST)
	 public String customerSubmitClaim(@RequestParam("file[]") MultipartFile[] fileUpload, HttpServletRequest request, 
			 @ModelAttribute("claim")Claim claim, RedirectAttributes redirArr) throws IOException {
		 User u1 = (User) request.getSession().getAttribute("currentUser");
			Customer c1 = customerdao.getById(u1.getId());
			List<ClaimDocument> files = new ArrayList<>();
			Claim newClaim = claim;
			newClaim.setType(policytypedao.getCategory(Integer.parseInt(claim.getType())));
			newClaim.setClaim_policy(policydao.getPolicyName(Integer.parseInt(claim.getClaim_policy())));
			newClaim.setClaimStatus("Pending review");
			newClaim.setSubmitdate(LocalDate.now());
		 if (fileUpload != null) {
	            for (MultipartFile aFile : fileUpload){ 
	            	ClaimDocument doc = new ClaimDocument();
	            	doc.setContent(aFile.getBytes());
	            	doc.setName(aFile.getOriginalFilename());
	            	files.add(doc);
	                System.out.println("Saving file: " + aFile.getOriginalFilename());
	            }
	            newClaim.setClaimDocument(files);
	            c1.getClaim().add(newClaim);
	            customerpolicydao.save(c1);
	            redirArr.addFlashAttribute("successMessageHeader", "We have received your application");
	            redirArr.addFlashAttribute("successMessage", "Kindly wait for our response on your claim.");
	        }
		return "redirect:my-claim";
		 
	 }
	 @InitBinder
	    public void initBinder(WebDataBinder binder) {
	        SimpleDateFormat sdf = new SimpleDateFormat("dd-mm-yyyy");
	        sdf.setLenient(true);
	        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	    }

}
