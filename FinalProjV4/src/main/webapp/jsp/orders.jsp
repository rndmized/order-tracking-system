<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="css/styles.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Orders</title>
</head>
<body>
	<h1>List of Orders</h1>
	<c:forEach items="${orderList}" var="order">
		<h2>${order.oId}</h2>
		<table  class="table">
			<tr>
				<th class="th">Quantity</th>
				<th class="th">Order Date</th>
				<th class="th">Customer ID</th>
				<th class="th">Customer Name</th>
				<th class="th">Product ID</th>
				<th class="th">Description</th>
			</tr>
			<tr>
				<td class="td">${order.qty}</td>
				<td class="td">${order.orderDate}</td>
				<td class="td">${order.cust.cId}</td>
				<td class="td">${order.cust.cName}</td>
				<td class="td">${order.prod.pId}</td>
				<td class="td">${order.prod.pDesc}</td>
			</tr>
		</table>
	</c:forEach>
	<div>
		<a href="/">Home</a> <a href="addOrder">Add Order</a> <a href="showCustomers">List
			Customers</a> <a href="showProducts">List Products</a> <a href="/logout">Logout</a>
	</div>
</body>
</html>

