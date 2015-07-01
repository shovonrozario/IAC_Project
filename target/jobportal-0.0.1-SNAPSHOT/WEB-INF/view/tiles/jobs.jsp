<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="col-md-10 col-md-offset-1">
	<h1>Available Jobs : ${ resultCount }</h1>

	<table class="table table-striped table-hover">
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
				<td>
					<a href="<c:url value='/jobdetail?id=${job.id}' />">View</a>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
					 | <a href="<c:url value='/editjob?id=${job.id}' />">Edit</a>
					 | <a href="<c:url value='/deletejob?id=${job.id}' />">Delete</a>
					</sec:authorize>
				</td>

			</tr>
		</c:forEach>
	</table>
</div>
