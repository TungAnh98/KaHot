<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/backgroundvideo.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<video autoplay muted loop id="myVideo">
		<source src="${pageContext.request.contextPath}/resources/video/video.mp4" type="video/mp4">
		Your browser does not support HTML5 video.
	</video>
	<div class="content">
		<div class="font">
			<h1>
				<strong>Kahot!</strong>
			</h1>
		</div>
		<p>GREAT LEARNING STARTS BY
			<h3>
				<STRONG>ASKING GREAT QUESTIONS</STRONG>
		</p>
		</h3>
		<article>
			<h2>Access is free and only takes 30 seconds!</h2><br />
			<c:url value="/login" var="login" />
				<span>(Already got an account? <a href="${login}" target="_blank">SIGN IN</a>, Visit our <a href="https://www.instagram.com/getkahoot/">Blog</a></span></h2>
			<br>
		</article>
		<br>
		<button id="myBtn" onclick="myFunction()">Get my free account</button>
		<a href="#"><button id="myBtn" onclick="myFunction()">Play
				now</button></a>

		<h2></h2>
		<a href="#demo" class="btn btn-info" data-toggle="collapse">Explore
			games</a>
		<div id="demo" class="collapse">Not yet :)</div>
		<h2></h2>
		<a href="#demo2" class="btn btn-info" data-toggle="collapse">About
			Kahot??</a>
		<div id="demo2" class="collapse">Not yet :)</div>
	</div>
</body>

</html>