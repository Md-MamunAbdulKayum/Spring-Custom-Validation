<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>

<html>
    <head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Show Product</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    </head>
    <body>
           <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">NoteArena Property</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="<c:url value="/dashboard.do" />">Dashboard</a></li>
                    <li><a href="<c:url value="/addCustomer.do" />">Add Customer</a></li>
                    <li><a href="<c:url value="/showCustomer.do" />">Show Customer</a></li>
                    <li><a href="<c:url value="/addProduct.do" />">Add Product</a></li>
                    <li class="active"><a href="<c:url value="/showProduct.do" />">Show Product</a></li>
                </ul>
            </div>
        </nav>
        <h1 style="text-align: center">Product Information</h1>
        <div style="text-align: center"> 
            <h3>Product Name:  ${productForm.productName }</h3>
            <h3>Product Quality:  ${productForm.quality}</h3>
            <h3>Measure Unit: ${productForm.measureUnit}</h3>
            <h3>Quantity:  ${productForm.quantity}</h3>
        </div>
    </body>
</html>
