<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title><tiles:getAsString name="title"></tiles:getAsString></title>

<!-- Bootstrap core CSS -->
<link
	href="<c:url value='/static/lib/bootstrap/css/bootstrap.min.css' />"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/static/css/jobportal-main.css' />"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div>
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
	</div>
	<br>
	<div class="container">
		<div class="pull-right">
			<form class="form-inline" method="get" action="<c:url value='/searchjob' />">
				<div class="form-group">
					<input type="text" class="form-control" id="searchParam" name="searchParam"
						placeholder="Search jobportal">
				</div>
				<button type="submit" class="btn btn-primary">Search</button>
			</form>
		</div>
		<div class="clear"></div>

		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<br>
	<div>
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>

</body>
</html>