package com.controller;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StreamUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Admin;
import com.bean.Claim;
import com.bean.ClaimDocument;
import com.bean.Customer;
import com.bean.CustomerPolicy;
import com.bean.Policy;
import com.bean.PolicyPlan;
import com.bean.PolicyType;
import com.bean.User;
import com.dao.AdminDao;
import com.dao.ClaimDao;
import com.dao.ClaimDocumentDao;
import com.dao.CustomerDao;
import com.dao.CustomerPolicyDao;
import com.dao.PolicyDao;
import com.dao.PolicyPlanDao;
import com.dao.PolicyTypeDao;
import com.dao.UserDao;

@Controller
public class AdminController {
	
	@Autowired    
	AdminDao admindao;
	
	@Autowired
	PolicyTypeDao policytypedao;
	
	@Autowired
	PolicyDao policydao;
	
	@Autowired
	PolicyPlanDao policyplandao;
	
	@Autowired
	CustomerDao customerdao;
	
	@Autowired
	UserDao userdao;
	
	@Autowired
	CustomerPolicyDao customerpolicydao;
	
	@Autowired
	ClaimDao claimdao;
	
	@Autowired
	ClaimDocumentDao claimdocumentdao;
	
	@RequestMapping("/adminPortal")    
    public String showAdminPortal(HttpServletRequest request, Model m){  
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Admin a1 = admindao.getById(u1.getId());
		m.addAttribute("adminUser", a1);
        return "adminPortal";   
    }
	@RequestMapping(value="/update-policy", method=RequestMethod.GET)    
    public String showUpdatePolicyPage(Model m){
		List<PolicyPlan> policyPlanList = policyplandao.getAll();
		List<Policy> policy = policydao.getAll();
		m.addAttribute("policyPlanList", policyPlanList);
		m.addAttribute("policyList", policy);
        return "adminUpdatePolicy";   
    }
	@RequestMapping("/view-customer")    
    public String showCustomerListPage(Model m){ 
		List<User> users = userdao.getAll();
		List<Customer> customer = customerdao.getAll();
		m.addAttribute("customerList", customer);
		m.addAttribute("usersList", users);
        return "adminViewCustomer";   
    }
	@RequestMapping("/view-claim")    
    public String showClaimListPage(Model m){
		List<User> users = userdao.getAll();
		List<Customer> customer = customerdao.getAll();
		m.addAttribute("customerList", customer);
        return "adminViewClaim";   
    }
	@RequestMapping("/edit-profile")
	public String editProfilePage(Model m, HttpServletRequest request){  
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Admin admin = admindao.getById(u1.getId());
		m.addAttribute("adminUser", admin);
        return "adminEditProfile";   
    }
	@RequestMapping(value="/update-profile", method=RequestMethod.POST)
	public String saveProfilePage(@RequestParam("admin_fname") String fname, @RequestParam("admin_lname") String lname,
									@RequestParam("admin_address") String address, @RequestParam("admin_contactNo") String contactNo,
									@RequestParam("admin_email") String email,  HttpServletRequest request, RedirectAttributes redirArr){
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Admin admin = admindao.getById(u1.getId());
		admin.setContactNo(contactNo);
		admin.setEmail(email);
		admin.setAddress(address);
		admin.setFname(fname);
		admin.setLname(lname);
		 admindao.update(admin);
		 redirArr.addFlashAttribute("updateMessage", "You have updated your profile!");
		 return "redirect:view-profile"; 
	}
	@RequestMapping(value="/view-profile" , method=RequestMethod.GET)    
    public String showAdminProfilePage(Model m, HttpServletRequest request){ 
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Admin admin = admindao.getById(u1.getId());
		m.addAttribute("adminUser", admin);
        return "adminProfile";   
    }

	@RequestMapping(value="/new-policy", method=RequestMethod.GET)    
    public ModelAndView showAddPolicyPage(Policy policymodel){
		ModelAndView m = new ModelAndView();
		List<PolicyType> policyTypes = policytypedao.getAll();
		m.setViewName("adminAddPolicy");
		m.addObject("policyTypeList", policyTypes);
        return m;   
    }
	@RequestMapping(value="/add-new-policy", method=RequestMethod.POST)
	public String addNewPolicy(
			@RequestParam("policy_name") String name, @RequestParam("policy_price") String price,
			@RequestParam("description") String description,
			@RequestParam("baseRate") String baseRate,@RequestParam("baseCoverage") String baseCoverage,
			@RequestParam("baseDuration") String baseDuration,@RequestParam("premiumRate") String premiumRate,
			@RequestParam("premiumCoverage") String premiumCoverage, @RequestParam("premiumDuration") String premiumDuration ,
			@RequestParam("premiumCharge") String premiumCharge, @RequestParam("pol_type_id") String type,
			@ModelAttribute("policy") Policy policy, RedirectAttributes redirAttrs){
		
			 PolicyType policyCategory = policytypedao.getType(type);
			 ArrayList<PolicyPlan> plans = policyplandao.add(baseRate, baseCoverage, baseDuration, 
					 										premiumRate,premiumCoverage,premiumDuration,
					 										premiumCharge);
			 policy.setName(name);
			 policy.setPrice(Double.parseDouble(price));
			 policy.setDescription(description);
			 policy.setPlan(plans);
			 policy.setPol_type_id(policyCategory);
			 redirAttrs.addFlashAttribute("successMessage", "You have successfully added a new policy!");
			 policydao.add(policy);
			 return "redirect:/new-policy";
    }

	@RequestMapping(value="/viewPlan/{id}", method=RequestMethod.GET)
	public String showPlan(@PathVariable("id") int id, Model m) {
		List<PolicyPlan> policyPlanList = policyplandao.getById(id);
		m.addAttribute("policyPlanList", policyPlanList);
		return "redirect:new-policy";
		
	}
	@RequestMapping(value="/editPolicy/{id}", method=RequestMethod.GET)
	public String showChosenPolicy(@PathVariable int id, Policy policymodel, Model m) {
		Policy policy = policydao.getById(id);
		List<PolicyType> policyTypes = policytypedao.getAll();
		List<PolicyPlan> policyPlanList = policyplandao.getAll();
		m.addAttribute("policyPlanList", policyPlanList);
		m.addAttribute("policyTypeList",policyTypes);
		m.addAttribute("currPolicy", policy);
		return "adminUpdateForm";
		
	}
	@RequestMapping(value="/editPolicy/update-current-policy", method=RequestMethod.POST)
	public String showUpdatedPolicy(@RequestParam("policy_id") String id, @RequestParam("policy_name") String name, @RequestParam("policy_price") String price,
			@RequestParam("description") String description,
			@RequestParam("baseRate") String baseRate,@RequestParam("baseCoverage") String baseCoverage,
			@RequestParam("baseDuration") String baseDuration,@RequestParam("premiumRate") String premiumRate,
			@RequestParam("premiumCoverage") String premiumCoverage, @RequestParam("premiumDuration") String premiumDuration ,
			@RequestParam("premiumCharge") String premiumCharge, @RequestParam("pol_type_id") String type, Model m, RedirectAttributes redirAttrs) {
		
			 PolicyType policyCategory = policytypedao.getType(type);

			 Policy updatePolicy = policydao.getById(Integer.parseInt(id));
			 List<PolicyPlan> plans = updatePolicy.getPlan();
			 updatePolicy.setName(name);
			 updatePolicy.setPrice(Double.parseDouble(price));
			 updatePolicy.setDescription(description);
			 updatePolicy.setPlan(policyplandao.updatePlans(plans, baseRate, baseCoverage, baseDuration, 
					 										premiumRate,premiumCoverage,premiumDuration,premiumCharge));
			 updatePolicy.setPol_type_id(policyCategory);
			 updatePolicy.setPolicyStatus("Active");
			 policydao.update(updatePolicy);
			 redirAttrs.addFlashAttribute("updateMessage", "You have successfully updated the policy!");
			 return "redirect:/update-policy";
		
	}
	@RequestMapping(value="/deletePolicy/{id}", method=RequestMethod.POST)
	public String deleteChosenPolicy(@PathVariable int id, Policy policymodel, Model m, RedirectAttributes redirArr) {
		Policy policy = policydao.getById(id);
		policydao.delete(policy);
		redirArr.addFlashAttribute("updateMessage", "You have successfully deleted the policy");
		return "redirect:/update-policy";
		
	}
	@RequestMapping(value="/deleteCustomer/{id}", method=RequestMethod.POST)
	public String deleteChosenCustomer(@PathVariable int id, Customer customerModel, Model m, RedirectAttributes redirArr) {
		Customer customer = customerdao.getById(id);
		redirArr.addFlashAttribute("updateMessage", "You have successfully deleted the customer");
		customerdao.delete(customer);
		return "redirect:/view-customer";
		
	}
	@RequestMapping(value="/approve-policy/{id}", method=RequestMethod.POST)
	public String approveCustomerPolicy(@PathVariable int id, Customer customerModel, Model m) {
		Customer customer = customerdao.getById(id);
		m.addAttribute("customerPolicies", customer);
		return "adminVerifyCustomerPolicy";
		
	}
	@RequestMapping(value="/approve-policy/submit/{id}", method=RequestMethod.POST)
	public String submitCustomerPolicyReview(@PathVariable int id, @RequestParam("policyApproval") String policyStatus,
			@RequestParam("comment")String comment, Model m, RedirectAttributes redirArr) {
		CustomerPolicy customerPolicy = customerpolicydao.getById(id);
		customerPolicy.setActivePolicy(policyStatus);
		customerPolicy.setComment(comment);
		customerpolicydao.update(customerPolicy);
		redirArr.addFlashAttribute("updateMessage", "You have approved customer purchase");
		return "redirect:/view-customer";
	}
	@RequestMapping(value="/reviewClaim/{id}", method=RequestMethod.GET)
	public String reviewCustomerClaim(@PathVariable int id, Model m) {
		Claim claim = claimdao.getById(id);
		m.addAttribute("currentClaim", claim);
		return "adminReviewClaim";
	}
	@RequestMapping(value="/reviewClaim/download/{id}", produces="application/zip")
	public void downloadCustomerClaimDocuments(@PathVariable int id, HttpServletResponse response) throws IOException {
		Claim claim = claimdao.getById(id);
		ZipOutputStream zipOut = new ZipOutputStream(response.getOutputStream());
		for (ClaimDocument doc : claim.getClaimDocument()) {
			FileSystemResource resource = new FileSystemResource(doc.getName());
			ZipEntry zipEntry = new ZipEntry(resource.getFilename());
			zipEntry.setSize(doc.getContent().length);
			zipOut.putNextEntry(zipEntry);
			StreamUtils.copy(doc.getContent(), zipOut);
			zipOut.closeEntry();
		}
		zipOut.finish();
		zipOut.close();
		response.setStatus(HttpServletResponse.SC_OK);
		response.addHeader(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\\");
		System.out.println("Downloading Files...");
	}
	@RequestMapping(value="/reviewClaim/submit-reviewclaim/{id}", produces="application/zip")
	public String updateCustomerClaim(@PathVariable int id, @RequestParam("comments")String comment, @RequestParam("claimStatus")String policyStatus, 
			HttpServletRequest request, RedirectAttributes redirArr ) {
		User u1 = (User) request.getSession().getAttribute("currentUser");
		Claim claim = claimdao.getById(id);
		System.out.println("Clam ID: " + id);
		claim.setClaimStatus(policyStatus);
		claim.setClaimReviewer(u1);
		claim.setReviewDate(LocalDate.now());
		claim.setReviewerComments(comment);
		redirArr.addFlashAttribute("updateMessage", "Customer claim has been updated!");
		claimdao.update(claim);
		return "redirect:/view-claim";
		
	}
}
