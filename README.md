# Spring-Custom-Validation
Here I come with a project on “Spring MVC Custom validation”. Let’s see what we got here:

Author :
Md Mamun Abdul Kayum

Technologies :
       Spring MVC, Bootstrap 3.x

Required dependency for custom validation purpose:

       <dependency>
            <groupId>javax</groupId>
            <artifactId>javaee-web-api</artifactId>
            <version>7.0</version>
            <scope>provided</scope>
        </dependency>

Tested on Application Servers :
Tomcat 8, Glassfish 4

Build Tool:
Maven

Description:
 For achieving spring mvc custom validation:
 1. you have to add "form:errors" tad at the form input field like:
 ```
                <div class="form-group">
                    <label class="control-label col-sm-2" for="name">Customer Name:</label>
                    <div class="col-sm-10">
                        <form:input path="name" value="" type="text" class="form-control" placeholder="Customer Name"/>
                    <font color="red"><form:errors path="name"></form:errors></font>
                    </div>
                </div>
 ```             
 #Add this error tag to those fields you want to validate.
 
 2. You must a propertise file(Say message.properties) which will contains your validation messages. In our case it is "messages.properties" file located at webapp/WEB-INF/i18n/messages.properties
 It contains our messages:

 ``` 
# validation message for product 
NotEmpty.productName=enter a name
NotEmpty.quality=enter a quality
NotEmpty.measureUnit=enter a measure unit
NotEmpty.quantity=enter a quantity
#validation message for customer
NotEmpty.name=enter a name
NotEmpty.education=enter your education
NotEmpty.address=enter your address
NotEmpty.designation=enter a designation

Range.quantity=quantity range should be between 1 - 100
Range.age=age should be greater than 5
 ``` 
3. Now you have to add a validator class for our form validation, it contains validation logics:
```
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
 ```
From here we are sending errors if a filed failed to a validation logic.
4.  Now from Controller class you have to check if a filed have any validation error:<br>
    ```
    CustomValidator userValidator = new CustomValidator();
    userValidator.validate(customerObject, result);
    if (result.hasErrors()) { 
    return "addCustomer"; 
    }
    ```
    <br>
#What we will got here:
![addcustomer](https://user-images.githubusercontent.com/19667452/37484058-ac4af392-28b1-11e8-90ae-25f769082728.PNG)

![addproduct](https://user-images.githubusercontent.com/19667452/37484147-e1879402-28b1-11e8-883e-28f95615dadf.PNG)
