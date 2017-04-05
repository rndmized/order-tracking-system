<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<h1>Error Creating the following Order</h1>
	<form:form modelAttribute="message">
		<h2>${message}</h2>
	</form:form>
	<form:form modelAttribute="order">
		<table>
			<tr>
				<th>Product ID</th>
				<th>Customer ID</th>
				<th>Quantity</th>
			</tr>
			<tr>
				<td>${order.prod.pId}</td>
				<td>${order.cust.cId}</td>
				<td>${order.qty}</td>
			</tr>
		</table>
	</form:form>
	<div>
		<a href="/">Home</a> <a href="addOrder">New Order</a> <a
			href="showOrders">List Orders</a>
	</div>
</body>
</html>