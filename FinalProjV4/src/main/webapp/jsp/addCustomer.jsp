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
	<h1>Add New Customer</h1>
	<form:form modelAttribute="customer">
		<table>
			<tr>
				<td><div>Customer name:</div></td>
				<td><form:input path="cName" /></td>
				<td><form:errors path="cName"></form:errors></td>
			</tr>
			<tr>
				<td><input type="submit" value="Add" /></td>
			</tr>
		</table>
	</form:form>
	<div>
		<a href="/">Home</a> <a href="showProducts">List Products</a> <a
			href="showOrders">List Orders</a>
	</div>
</body>
</html>