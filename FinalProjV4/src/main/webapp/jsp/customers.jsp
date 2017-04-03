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
	<h1>List of Customers</h1>
	<table>
		<tr>
			<th>Customer ID</th>
			<th>Name</th>

		</tr>
			<c:forEach items="${customerList}" var="customer">
				<tr>
					<td>${customer.cId}</td>
					<td>${customer.cName}</td>

				</tr>
			</c:forEach>
	</table>
</body>
</html>

