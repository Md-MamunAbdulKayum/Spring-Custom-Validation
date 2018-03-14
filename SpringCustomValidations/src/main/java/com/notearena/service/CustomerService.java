/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.notearena.service;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Mamun
 */
public interface CustomerService {
    public boolean checkCustomer(HttpSession httpSession); 
}
