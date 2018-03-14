/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.notearena.service;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;

/**
 *
 * @author Mammun
 */
@Service
public class CustomerServiceImpl implements CustomerService{
    String cusName;
    String cusAddress;
    public boolean checkCustomer(HttpSession httpSession) {
        // getting out session attributes
        cusName = (String) httpSession.getAttribute("username");
        cusAddress = (String) httpSession.getAttribute("address");
        
        if(cusName!=null && cusAddress!=null) {
            System.out.println("Customer name: "+cusName);
            System.out.println("Customer address: "+cusAddress);
            return true;
        }
        return false;
    }
    
}
