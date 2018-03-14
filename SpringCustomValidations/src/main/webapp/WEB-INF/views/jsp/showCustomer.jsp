<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Show Customer</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
                    <li class="active"><a href="<c:url value="/showCustomer.do" />">Show Customer</a></li>
                    <li><a href="<c:url value="/addProduct.do" />">Add Product</a></li>
                </ul>
            </div>
        </nav>
    <c:choose>
        <c:when test="${empty sessionScope.username && empty sessionScope.age && empty sessionScope.address}">
            <b><h3 align="center" style="color: red; font-family: serif">Did not set session attributes! Add Customer first.</h3></b>  
        </c:when>
        <c:otherwise>
            <h1 style="text-align: center">Customer Information</h1>
            <div style="text-align: center">
            <h3>Customer Name:  ${sessionScope.username }</h3>
            <h3>Customer Age:  ${sessionScope.age}</h3>
            <h3>Address:  ${sessionScope.address}</h3>
            <h3>Customer Education:  ${customerObject.education}</h3>
            <h3>Designation :  ${customerObject.designation}</h3>
            </div>
        </c:otherwise>
    </c:choose>
</body>
</html>