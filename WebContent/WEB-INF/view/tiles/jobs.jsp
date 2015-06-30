<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="col-md-6 col-md-offset-3">
	<h1>Data Result</h1>

	<table class="table table-striped">
		<tr>
			<th>Job ID</th>
			<th>Job Title</th>
			<th>Company</th>
			<th>Application Deadline</th>
			<th>Actions</th>
		</tr>
		<c:forEach var="job" items="${jobs}">
			<tr>
				<td>${job.id}</td>
				<td>${job.title}</td>
				<td>${job.company}</td>
				<td>${job.deadline}</td>
				<td><a href="">View</a> | <a href="">Edit</a> | <a href="">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</div>
