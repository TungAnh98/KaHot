<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Your Quizz | Ká Hột</title>
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
	href="${pageContext.request.contextPath}/resources/css/my-quizz.css" />
</head>

<body>
	<jsp:include page="user-header.jsp"></jsp:include>
	<div class="row no-gutters">
		<div class="col">
			<input class="form-control border-dark border-right-0 rounded-0"
				type="search" placeholder="Search..." id="example-search-input4">
		</div>
		<div class="col-auto">
			<button
				class="btn btn-outline-dark border-left-0 rounded-0 rounded-right"
				type="button">
				<i class="fa fa-search"></i>
			</button>
		</div>
	</div>
	<div class="jumbotron">
	<c:forEach items="${my_quiz}" var="my_quiz">
		<div class="quizz container">
			<p class="my-quiz-title">
				<a href="#"><b>${my_quiz.questionSetTitle}</b></a>
			</p>
			<p class="public-quiz">
				<i class="fas fa-globe-asia"></i> 
				<c:if test="${my_quiz.status == 1}">
					Public
				</c:if>
				<c:if test="${my_quiz.status == 0}">
					Only me 
				</c:if>
			</p>
			<p>
				<b>not work</b> Question
			</p>
			<a href="edit-quiz.html"><button
					class="btn btn-sm btn-info btn-my-quiz">
					<i class="far fa-edit"></i> Edit
				</button></a> <a href="#"><button class="btn btn-sm btn-danger btn-my-quiz"
					style="float: right">
					<i class="fas fa-trash-alt"></i> Delete
				</button></a> <a href="add-game-title.html"><button
					class="btn btn-success btn-sm btn-my-quiz-play">
					<i class="fas fa-play"></i> Create Game
				</button></a>
		</div>
		</c:forEach>
	</div>
			<c:out value="${sessionScope.currentAccount.id}" />
</body>

</html>