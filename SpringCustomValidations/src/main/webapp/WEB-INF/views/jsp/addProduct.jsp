<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Sales Management System</title>
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
                    <li><a href="<c:url value="/showCustomer.do" />">Show Customer</a></li>
                    <li class="active"><a href="<c:url value="/addProduct.do" />">Add Product</a></li>
                </ul>
            </div>
        </nav>
        <div style="width: 600px; margin: auto;">
            <h3 align="center"><b>Add a Product</b></h3>
            <form:form class="form-horizontal" role="form" action="showProduct.do" modelAttribute="productForm">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="productName">Product Name:</label>
                    <div class="col-sm-10">
                        <form:input path="productName" value="" type="text" class="form-control" placeholder="Product Name"/>
                        <font color="red"><form:errors path="productName"></form:errors></font>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="age">Quality :</label>
                        <div class="col-sm-8"> 
                            <form:input path="quality" type="text" class="form-control"  placeholder="Quality"/>
                            <font color="red"><form:errors path="quality"></form:errors></font>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="measureUnit">Measure Unit</label>
                        <div class="col-sm-8"> 
                            <form:input path="measureUnit" type="text" class="form-control"  placeholder="Measure Unit"/>
                           <font color="red"><form:errors path="measureUnit"></form:errors></font>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="quantity">Quantity</label>
                        <div class="col-sm-8"> 
                            <form:textarea path="quantity" type="text" class="form-control"  placeholder="Quantity"/>
                            <font color="red"><form:errors path="quantity"></form:errors></font>
                        </div>
                    </div>
                </div>
                <div class="form-group"> 
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                </div>
            </form:form>
        </div>

    </body>
</html>