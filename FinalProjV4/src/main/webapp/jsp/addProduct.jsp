<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SS RAD Final Project</title>
</head>
<body>
	<h1>Add New Product</h1>
	<table>
		<tr>
			<td><div>Product Description:</div></td>
			<td><input type="text" name="pDesc"></input> </td>
		</tr>
		<tr>
			<td><div>Quantity in Stock</div></td>
			<td><input type="text" name="qtyInStock"></input> </td>
		</tr>
	</table>
	<button>Add</button>
	<div><a href="/">Home</a> <a href="showProducts">List Products</a> <a href="showOrders">List Orders</a> </div>
</body>
</html>

