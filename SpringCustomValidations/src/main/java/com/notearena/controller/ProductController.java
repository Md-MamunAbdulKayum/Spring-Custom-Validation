/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.notearena.controller;

import com.notearena.model.ProductForm;
import com.notearena.validator.CustomValidator;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ProductController {
    	@RequestMapping(value = "addProduct")
	public String addProduct(@ModelAttribute("productForm") ProductForm productForm, Model model) {
	    System.out.println("Check add product");
		model.addAttribute("customerObject", productForm);
		return "addProduct";
	}
	@RequestMapping(value = "showProduct")
	public String showCustomer(HttpSession httpSession, @ModelAttribute("productForm") ProductForm productForm, BindingResult result, Model model) {
		System.out.println("Check show product");
		CustomValidator userValidator = new CustomValidator();
                userValidator.validate(productForm, result);
                if (result.hasErrors()) { 
                return "addProduct"; 
                }
		return "showProduct"; 
	}
}
