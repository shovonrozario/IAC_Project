<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-md-10 col-md-offset-1">

	<h1>Admin Panel</h1>

	<h3>All Users</h3>

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