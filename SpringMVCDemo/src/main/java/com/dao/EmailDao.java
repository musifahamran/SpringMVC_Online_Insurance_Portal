package com.dao;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.bean.Customer;
import com.bean.CustomerPolicy;
import com.bean.Email;
import com.bean.PolicyPlan;

public class EmailDao {
	
	HibernateTemplate template;
	
	@Autowired 
	private JavaMailSender emailSender;
	
		
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	}
	
	public void sendMessage(String customerEmail, String subject, String message) throws MessagingException {
		Email email = new Email();
		MimeMessage mimeEmail = emailSender.createMimeMessage();
		 MimeMessageHelper helper = new MimeMessageHelper(mimeEmail, true);
		 helper.setFrom(email.getFromAddress());
		 helper.setTo(customerEmail);
		 helper.setSubject(subject);
		 helper.setText(message);
		 emailSender.send(mimeEmail);		
	}
	public String policyPurchaseMssg(String policyName) {
	
		return "You have purchased the " + policyName + " policy. Kindly wait for our Agent's response on your purchase.";
	}

	public String upgradePlan(Customer c1, int id, PolicyPlan p1) {
		String greeting = "Hi " + c1.getFname() + " " + c1.getLname() + ",<br><br> ";
		String content = "";
		for(CustomerPolicy customerPolicy:c1.getCustomerpolicy()) {
			if(customerPolicy.getCustomerpolicy_id() == id) {
				content = "This is a confirmation email to let you know that your policy plan for " + customerPolicy.getPolicy().getName() 
						+ " has been upgraded to Premium. <br>Our Agent will shortly contact you for more details.";
				break;
			}
		}
		String ending = "<br><br>Thank you for using our Insurance Portal. Have a nice day.";
		
		
		return greeting + content + ending;
	}
	
	public String successRegistration(Customer c1) {
		String greeting = "Hi " + c1.getFname() + " " + c1.getLname() + ",<br><br>";
		String content = "Thank for registering at Prodexa Insurance Portal! \n"
				+ "This is a confirmation email to let you know that you have registered this email account with us."
				+ "<br>Any future communications and updates will be sent to this email address.";
		
		String ending = "<br><br>Thank you for signing up on Prodexa's Online Insurance Portal. Have a nice day.";
		
		
		return greeting + content + ending;
		
		
	}
	

}
