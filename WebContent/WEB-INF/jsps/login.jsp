<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.css" />
</head>
<body onload="document.loginForm.j_username.focus();">
	<div class="col-md-6 col-md-offset-3">
		<form name="loginForm" class="form-horizontal" action="${pageContext.request.contextPath}/j_spring_security_check" method="POST">
			<fieldset>

				<!-- Form Name -->
				<legend>Log In</legend>
				
				<div class="alert-danger">
					<c:if test="${param.error !=null }">
						<p>Username or password you entered seem to be incorrect.</p>
					</c:if>					
				</div>				

				<!-- Text input-->
				<div class="control-group">
					<label class="control-label" for="j_username">Username</label>
					<div class="controls">
						<input id="j_username" name="j_username"
							placeholder="Enter username" class="input-xlarge" required=""
							type="text">

					</div>
				</div>
				
				<br>
				
				<!-- Password input-->
				<div class="control-group">
					<label class="control-label" for="j_password">Password</label>
					<div class="controls">
						<input id="j_password" name="j_password"
							placeholder="Enter password" class="input-xlarge" type="password">

					</div>
				</div>		
						
				<br>
				
				<p><a href="${pageContext.request.contextPath}/newaccount">Create new account</a></p>
				
				<!-- Button -->
				<div class="control-group">
					<label class="control-label" for="submit"></label>
					<div class="controls">
						<button id="submit" name="submit" class="btn btn-primary">Log
							In</button>
					</div>
				</div>

			</fieldset>
		</form>
		
		
	</div>
</body>
</html>