
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Question Set</title>
</head>
<body>
	<c:url value="/QuestionSetEdit" var="qsEdit" />
	<form:form action="${qsEdit}" method="POST"
		modelAttribute="qs">
		Title : <form:input path="questionSetTitle" />
		<br />Status: <br>
		<form:radiobutton path="status" value="0" />PRIVATE
		<form:radiobutton path="status" value="1" />PUBLIC <br>

		<br>
		<button type="submit">Save</button>

	</form:form>
</body>
</html>