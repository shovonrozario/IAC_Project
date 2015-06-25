<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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
		<sec:authorize access="isAuthenticated()">
			<p>
				<a href="<c:url value='/j_spring_security_logout' />">Log out</a>
			</p>
		</sec:authorize>

		<sec:authorize access="!isAuthenticated()">
			<p>
				<a href="<c:url value='/login' />">Log in</a>
			</p>
		</sec:authorize>

		<sec:authorize access="!hasRole('ROLE_GENERAL')">
			<p>
				<a href="<c:url value='/admin' />">Admin Panel</a>
			</p>
		</sec:authorize>


		<h1>Job Portal Home</h1>
		<p>
			<a href="${pageContext.request.contextPath}/createjob">Create new
				job</a><br> <a href="${pageContext.request.contextPath}/jobs">Show
				all jobs</a>
		</p>

	</div>
</body>
</html>