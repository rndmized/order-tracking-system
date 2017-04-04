<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Customer</title>
</head>
<body>
	<h1>Add New Order</h1>
	<h2>${msg}</h2>
	<form:form modelAttribute="order">
		<table>
			<tr>
				<td><div>Customer ID:</div></td>
				<td><form:input path="cust.cId" /></td>
				<td><form:errors path="cust.cId"></form:errors></td>
			</tr>
			<tr>
				<td><div>Product ID:</div></td>
				<td><form:input path="prod.pId" /></td>
				<td><form:errors path="prod.pId"></form:errors></td>
			</tr>
			<tr>
				<td><div>Quantity:</div></td>
				<td><form:input path="qty" /></td>
				<td><form:errors path="qty"></form:errors></td>
			</tr>
			<tr>
				<td><input type="submit" value="Add" /></td>
			</tr>
		</table>
	</form:form>
	<div>
		<a href="/">Home</a> <a href="showCustomers">List Customers</a> <a
			href="showProducts">List Products</a>
	</div>
</body>
</html>