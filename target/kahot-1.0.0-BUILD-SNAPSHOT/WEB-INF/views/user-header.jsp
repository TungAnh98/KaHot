<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	 crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	 crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	 crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	 crossorigin="anonymous">

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	 crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/custom.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css" />
</head>

<body>
	<nav class="navbar bg-dark">
		<c:url value="/" var="home" /> <a href="${home}"><img src="${pageContext.request.contextPath}/resources/images/logo_kahot.png"
			 alt="Error Logo !" /></a>
		<div class="menu">
			<c:url value="public-quiz" var="public_quiz" />
			<a href="${public_quiz }"><button class="btn btn-outline-light">
					<i class="far fa-folder-open"></i> Public Quizz
					<c:url value="/my-quiz" var="my_quiz" />
				</button></a> <a href="${my_quiz}"><button class="btn btn-outline-light">
					<i class="far fa-file"></i> My Quizz
				</button></a>
			<c:url value="/report-page" var="report_page" />
			<a href="${report_page}"><button class="btn btn-outline-light">
					<i class="fas fa-chart-bar"></i> Reports
				</button></a>
		</div>
		<div class="button-right">
			<c:url value="/add-quiz-title" var="addQuizTitle" />
			<a href="${addQuizTitle}"><button class="btn btn-success btn-sm">
					<i class="fas fa-folder-plus"></i> Make Quizz
				</button></a>
			<!-- <a href="account-page.html"><button class="btn btn-info btn-sm"><i class="fas fa-user-cog"></i> Account</button></a> -->
			<div class="btn-group">
				<button type="button" class="btn btn-info btn-sm dropdown-toggle " data-toggle="dropdown" aria-haspopup="true"
				 aria-expanded="false">
					<i class="fas fa-user-cog"></i> Account
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#"><b>
							<c:out value="${sessionScope.currentAccount.username}" /></b></a>
					<c:url value="/edit-profile" var="edit_profile" />
					<a class="dropdown-item" href="${edit_profile}">Edit Profile</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item sign-out" href="home.html"><i class="fas fa-sign-out-alt"></i> Log out</a>
				</div>
			</div>
		</div>
	</nav>
</body>

</html>