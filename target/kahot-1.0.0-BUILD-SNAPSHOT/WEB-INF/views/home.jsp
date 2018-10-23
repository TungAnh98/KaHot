<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home Page | Ká hột</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/custom.css" />
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/icon-kahot.ico"/>
</head>

<body>
    <nav class="navbar bg-dark justify-content-between">
            <c:url value="/" var="home" /> <a href="${home}"><img src="${pageContext.request.contextPath}/resources/images/logo_kahot.png"
			 alt="Error Logo !" /></a>
        <div class="button-right">
        	<c:url value="player-pin" var ="player_pin" />
            <a href="${player_pin}"><button class="btn btn-danger btn-sm">Play!</button></a>
            <c:url value="/login" var="login" />
            <a href="${login}"><button class="btn btn-success btn-sm">Login</button></a>
            <c:url value="/sign-up-page" var="sign_up" />
            <a href="${sign_up}"><button class="btn btn-warning btn-sm">Sign up</button></a>
        </div>
    </nav>
    <div class="home-page">
        <h1>Home Page</h1>
    </div>
</body>

</html>