package com.notearena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.notearena.model.CustomerForm;
import com.notearena.service.CustomerService;
import com.notearena.validator.CustomValidator;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;



@Controller
public class CustomerController {
         
        @Autowired
        CustomerService customerService;
    
	@RequestMapping(value = "dashboard")
	public String getDashboard(@ModelAttribute("customerObject") CustomerForm customerObject, Model model) {
		System.out.println("Check dashboard");
		return "customer";
	}
		
	@RequestMapping(value = "addCustomer")
	public String addCustomer(@ModelAttribute("customerObject") CustomerForm customerObject, BindingResult result, Model model) {
	    System.out.println("Check add customer");
		model.addAttribute("customerObject", customerObject);
		return "addCustomer";
	}
	@RequestMapping(value = "showCustomer")
	public String showCustomer(HttpSession httpSession, @ModelAttribute("customerObject") CustomerForm customerObject, BindingResult result, Model model) {
		System.out.println("Check show customer");
                CustomValidator userValidator = new CustomValidator();
                userValidator.validate(customerObject, result);
                if (result.hasErrors()) { 
                return "addCustomer"; 
                }
		System.out.println("Name:"+customerObject.getName());
                // setting session attributes
                if (customerObject.getName()!= null && customerObject.getAge()!=0 && customerObject.getAddress()!=null) {
                        setSessionAttributes(httpSession, customerObject.getName(), customerObject.getAge(), customerObject.getAddress());
                }
               // let's check session attribute values from service class
                boolean checkCus = customerService.checkCustomer(httpSession);
                if(checkCus) {
                    System.out.println("Found session values at service");
                } else {
                    System.out.println("Could not find session values at service"); 
                }
                
		model.addAttribute("customerObject", customerObject);
		return "showCustomer"; 
	}
        
        /**
         * sets session attributes
         * @param httpSession
         * @param customerName
         * @param customerAge
         * @param customerAddress 
         */
        private void setSessionAttributes(HttpSession httpSession, String customerName, int customerAge, String customerAddress) {
            httpSession.setAttribute("username", customerName);
            httpSession.setAttribute("age", customerAge);
            httpSession.setAttribute("address", customerAddress);
        }
}
