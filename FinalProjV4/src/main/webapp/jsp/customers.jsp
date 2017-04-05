<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="css/styles.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customers</title>
</head>
<body>
	<h1>List of Customers</h1>
	<c:forEach items="${customerList}" var="customer">
		<h2>${customer.cId} ${customer.cName}</h2>
		<h3>${customer.cName}'s Orders</h3>
		<table  class="table">
			<tr>
				<th class="th">Order ID</th>
				<th class="th">Quantity</th>
				<th class="th">Product ID</th>
				<th class="th">Description</th>
			</tr>
			<c:forEach items="${customer.orders}" var="order">
				<tr>
					<td class="td">${order.oId}</td>
					<td class="td">${order.qty}</td>
					<td class="td">${order.prod.pId}</td>
					<td class="td">${order.prod.pDesc}</td>
				</tr>
			</c:forEach>
		</table>
	</c:forEach>
	<div>
		<a href="/">Home</a> <a href="addCustomer">Add Customer</a> <a
			href="showProducts">List Products</a> <a href="showOrders">List
			Orders</a> <a href="/logout">Logout</a>
	</div>
</body>
</html>

