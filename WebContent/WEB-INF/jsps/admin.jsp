<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.css" />
</head>
<body>
<div class="col-md-6 col-md-offset-3">
	<p><a href="<c:url value='/j_spring_security_logout' />">Log out</a></p>
	<p><a href="<c:url value='/admin' />">Admin Panel</a></p>
	
	<h1>Admin Panel</h1>
	<p>
		<a href="${pageContext.request.contextPath}/createjob">Create new job</a><br> 
		<a href="${pageContext.request.contextPath}/jobs">Show all jobs</a>
	</p>
	
	<h1>All Users</h1>

		<table class="table table-striped">
			<tr>
				<th>Username</th>
				<th>Email</th>
				<th>Role</th>
				<th>Enabled</th>
			</tr>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.username}</td>
					<td>${user.email}</td>
					<td>${user.authority}</td>
					<td>${user.enabled}</td>
				</tr>
			</c:forEach>
		</table>
</div>

</body>
</html>