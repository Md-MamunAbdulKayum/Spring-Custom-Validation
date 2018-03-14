/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.notearena.validator;


import com.notearena.model.CustomerForm;
import com.notearena.model.ProductForm;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;

public class CustomValidator {
    
    public void validate(Object target, Errors errors)
    {
        if (target instanceof ProductForm) {
//        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "productName", "NotEmpty.productName");
//        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "quality", "NotEmpty.quality");
//        
            ProductForm productForm = (ProductForm) target;
            if (!StringUtils.hasText(productForm.getProductName())) {
                errors.rejectValue("productName", "NotEmpty.productName");
            }
            if (!StringUtils.hasText(productForm.getQuality())) {
                errors.rejectValue("quality", "NotEmpty.quality");
            }
            if (!StringUtils.hasText(productForm.getMeasureUnit())) {
                errors.rejectValue("measureUnit", "NotEmpty.measureUnit");
            }
            if (productForm.getQuantity() < 1 || productForm.getQuantity() > 100) {
                errors.rejectValue("quantity", "Range.quantity");
            }
        }
        if (target instanceof CustomerForm) {
            CustomerForm customerForm = (CustomerForm) target;
            if (!StringUtils.hasText(customerForm.getName())) {
                errors.rejectValue("name", "NotEmpty.name");
            }
            if (!StringUtils.hasText(customerForm.getEducation())) {
                errors.rejectValue("education", "NotEmpty.education");
            }
            if (!StringUtils.hasText(customerForm.getAddress())) {
                errors.rejectValue("address", "NotEmpty.address");
            }
            if (!StringUtils.hasText(customerForm.getDesignation())) {
                errors.rejectValue("designation", "NotEmpty.designation");
            }
            if (customerForm.getAge() < 5) {
                errors.rejectValue("age", "Range.age");
            }
        }
    }
}
