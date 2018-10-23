<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Create Question</title>
</head>

<body>
	<br>
	<form action="" method="GET">
		Question:<br><br>
		<input type="text" name="question"><br><br>
		
		<table>
			<tr>
				<td>
					Answer 1:<br>
					<input type="text" name="answer1"> 
					<input type="checkbox" name="status1">
				</td>
				<td>
					Answer 2:<br>
					<input type="text" name="answer2"> 
					<input type="checkbox" name="status2">
				</td>
			</tr>
			<tr>
				<td>
					Answer 3:<br>
					<input type="text" name="answer3"> 
					<input type="checkbox" name="status3">
				</td>
				<td>
					Answer 4:<br>
					<input type="text" name="answer4"> 
					<input type="checkbox" name="status4">
				</td>
			</tr>
		</table>
		<input type="submit" value="Next">
	</form>
</body>

</html>