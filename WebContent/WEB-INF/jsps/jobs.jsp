<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

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
		<h1>Data Result</h1>

		<table class="table table-striped">
			<tr>
				<th>Job ID</th>
				<th>Job Title</th>
				<th>Company</th>
				<th>Job Details</th>
				<th>Application Email</th>
				<th>Application Deadline</th>
			</tr>
			<c:forEach var="job" items="${jobs}">
				<tr>
					<td>${job.id}</td>
					<td>${job.title}</td>
					<td>${job.company}</td>
					<td>${job.details}</td>
					<td>${job.email}</td>
					<td>${job.deadline}</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>