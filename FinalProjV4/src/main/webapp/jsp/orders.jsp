<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Orders</title>
</head>
<body>
	<h1>List of Orders</h1>
	<table>
		<tr>
			<th>Order ID</th>
			<th>Customer Name</th>
		</tr>
			<c:forEach items="${orderList}" var="order">
				<tr>
					<td>${order.oId}</td>
					<td>${order.getCust()}</td>
				</tr>
			</c:forEach>
	</table>
</body>
</html>

