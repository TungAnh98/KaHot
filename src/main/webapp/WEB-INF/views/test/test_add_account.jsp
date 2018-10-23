<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/saveAccount" var="saveAccount" />
	<form:form action="${saveAccount}" method="POST"
		modelAttribute="accountAtt">
		User Name : <form:input path="username" />
		<br />
		Pass word : <form:input path="password" />
		<br />
		Email : <form:input path="email" />
		<br />
		Role : <form:input path="role" />
		<br />
		Status : <form:input path="status" />
		<br />
		
		<button type="submit">Save</button>

	</form:form>
</body>
</html>