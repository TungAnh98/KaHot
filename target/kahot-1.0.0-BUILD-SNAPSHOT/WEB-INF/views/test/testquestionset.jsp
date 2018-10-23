<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>

<head>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Login</title>
</head>

<body>
	<div class="container">
		<h1>Question Set Page</h1>
		<a href="<c:url value="/addQuestionSet"/>">Add New Question Set</a>
		<table class="table table-striped table-bordered">
			<tr>
				<td>Id</td>
			
				<td>Set Title</td>
				<td>Account Name</td>
				<td>Create_Date</td>
				<td>Modify_Date</td>
			</tr>
			<c:forEach items="${listQuestionSet}" var="a">
				<tr>
					<td>${a.id}</td>
					
					<td>${a.questionSetTitle}</td>
					<td>${a.account.username}</td>
					<td>${a.createDate}</td>
					<td>${a.modifyDate}</td>
				</tr>
			</c:forEach>
		</table>
		
	</div>
</body>

</html>