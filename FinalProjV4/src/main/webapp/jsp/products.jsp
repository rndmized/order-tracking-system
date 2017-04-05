<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="css/styles.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
	<h1>List of Products</h1>
	<table class="table">
		<tr class="tr">
			<th class="th">Product ID</th>
			<th class="th">Description</th>
			<th class="th">Qty in Stock</th>
		</tr >
			<c:forEach items="${productList}" var="product">
				<tr class="tr">
					<td class="td">${product.pId}</td>
					<td class="td">${product.pDesc}</td>
					<td class="td">${product.qtyInStock}</td>
				</tr>
			</c:forEach>
	</table>
	<div><a href="/">Home</a> <a href="addProduct">Add Product</a> <a href="showProducts">List Products</a> <a href="showOrders">List Orders</a> <a href="/logout">Logout</a></div>
</body>
</html>

