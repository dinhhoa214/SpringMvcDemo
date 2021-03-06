
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Being Java Guys | Spring DI Hello World</title>
<style>
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
}

td {
	font-size: 15px;
	color: black;
	width: 120px;
	height: 22px;
	text-align: center;
}

.heading {
	font-size: 18px;
	color: white;
	font: bold;
	background-color: orange;
	border: thick;
}
</style>
</head>
<body>
	<center>



		<b>User List | Being Java Guys </b>





		<table border="1">
			<tr>
				<td class="heading">User Id</td>
				<td class="heading">Name</td>
				<td class="heading">Time</td>
				<td class="heading">Status</td>
				<td class="heading">Is Public</td>
				<td class="heading">Edit</td>
				<td class="heading">Delete</td>
			</tr>
			<c:forEach var="acc" items="${map.Accounts}">
				<tr>
					<td>${acc.id}</td>
					<td>${acc.name}</td>
					<td>${acc.time}</td>
					<td>${acc.status}</td>
					<td>${acc.isPublic}</td>
					<td><a href="edit?id=${acc.id}">Edit</a></td>
					<td><a href="delete?id=${acc.id}">Delete</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="7"><a href="register">Add New User</a></td>
			</tr>
		</table>
		
		<form:form method="post" action="/SpringDemo/saveAccount" modelAttribute="account">
			<table>
				<tr>
					<td>ID :</td>
					<td><form:input path="id" value="${map.account.id}" readonly="true"/></td>
				</tr>
				<tr>
					<td>First Name :</td>
					<td><form:input path="name" value="${map.account.name}"/></td>
				</tr>
				<tr>
					<td>Time :</td>
					<td><form:input path="time" value="${map.account.time}"/></td>
				</tr>
				<tr>
					<td>Status :</td>
					<td><form:input path="status" value="${map.account.status}"/></td>
				</tr>
				<tr>
					<td>Is public :</td>
					<td><form:input path="isPublic" value="${map.account.isPublic}"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save" /></td>
				</tr>
			</table>
		</form:form>
	</center>
</body>
</html>
