<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Add Nick name | Ká Hột</title>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/custom.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/pin-page.css" />
</head>

<body class="bg-rgb">
	<div class="row row-header">
		<div class="col"></div>
		<div class="col"></div>
		<div class="col">${gameId}</div>
		<div class="col">${gamePin}</div>
		<div class="col">${playerNameError}</div>
	</div>
	<div class="row">
		<div class="col"></div>
		<div class="col"></div>
		<div class="col">
			<i class="fas fa-fish"></i>
		</div>
		<div class="col"></div>
		<div class="col"></div>
	</div>
	<div class="row">
		<div class="col"></div>
		<div class="col"></div>
		<div class="col">
			<c:url value="/check-player-name" var="check_player_name" />
			<form:form action="${check_player_name}" modelAttribute="playerNameInput">
				<input name="playerNameInput" type="text"
					class="form-control-lg text-center border border-dark"
					placeholder="Your name..." />
					<input name="gameId" type="text" value="${gameId}"/>
				<button type="submit" class="btn btn-dark btn-lg">Join game</button>
			</form:form>
		</div>
		<div class="col"></div>
		<div class="col"></div>
	</div>

</body>

</html>