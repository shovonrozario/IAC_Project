<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="col-md-10 col-md-offset-1">

	<h3>Job Title</h3>
	<p>${job.title}</p>
	<h3>Company</h3>
	<p>${job.company}</p>
	<h3>Job Description</h3>
	<p>${job.details}</p>
	<h3>Email to apply</h3>
	<p>${job.email}</p>
	<h3>Application Deadline</h3>
	<p>${job.deadline}</p>


</div>
