<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customers</title>
</head>
<body>
	<h1>SS RAD Final Project</h1>
	<table>
		<tr>
			<th>Products</th>
			<th>Customers</th>
			<th>Orders</th>
		</tr>
		<tr>
			<td><a href="/showProducts">List Products</a></td>
			<td><a href="/showCustomers">List Customers</a></td>
			<td><a href="/showOrders">List Orders</a></td>
		</tr>
		<tr>
			<td><a href="/addProduct">Add Products</a></td>
			<td><a href="/addCustomer">Add Customer</a></td>
			<td><a href="/addOrder">Add Orders</a></td>
		</tr>
	</table>
</body>
</html>

