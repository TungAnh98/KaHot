<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
		<h1>Answer Page</h1>
		<table class="table table-striped table-bordered">
			<tr>
				<td>Game Id</td>
				<td>Pin</td>
				<td>Host</td>
				
			</tr>
			<c:forEach items="${listGame}" var="a">
				<tr>
					<td>${a.id}</td>
					<td>${a.pin}</td>
					<td>${a.account.username}</td>
					
				</tr>
			</c:forEach>
		</table>
		<div>
			Hello 
			${test.username}
		</div>
	</div>
</body>

</html>