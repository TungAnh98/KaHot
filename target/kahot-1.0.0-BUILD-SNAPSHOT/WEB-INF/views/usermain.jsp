<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Insert title here</title>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">

  <div class="container-fluid" style="background-color:#45a2e4;color:#fff;height:220px;">
    <div id="img"><img src="${pageContext.request.contextPath}/resources/images/image1.png" width="900px" height="200px"></div>
  </div>

  <nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Kahot!
          <c:out value="${sessionScope.currentAccount.username}" />
        </a>
      </div>
      <div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="#section1">News</a></li>
            <li><a href="#section2">Discover</a></li>
            <li><a href="#section3">Data Quizz</a></li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">New Game<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#section41">Game Setting</a></li>
                <li><a href="#section42">Start</a></li>
              </ul>
            </li>

          </ul>
          <li><a href="createSet" class="btn" >Create</a></li>

          <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">

                <div class="modal-footer">
                  <div class="btn-group btn-group-justified" role="group" aria-label="group button">
                    <div class="btn-group" role="group">
                      <button type="button" class="btn btn-default" role="button">Next</button>
                    </div>

                    <div class="btn-group" role="group">
                      <button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save"
                        role="button">Save</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div id="setting">
            <li><i class="fa fa-gear fa-spin" style="font-size:30px;color: white;margin: -10px -160px; float: right;"></i></li>
          </div>
        </div>
      </div>
    </div>
  </nav>


  <div id="section3" class="container-fluid">
	
    <div class="container">
			<c:forEach items="${listquestionset}" var="qs">
				<div class="col-sm-12">

					<div class="bs-calltoaction bs-calltoaction-default">
						<div class="row">
							<div class="col-md-9 cta-contents">
								<h1 class="cta-title">${qs.questionSetTitle}</h1>
							</div>
							<div class="col-md-3 cta-button">
								<a href="questionsetview?id=${qs.id}" class="btn btn-lg btn-block btn-default">View!</a>
							</div>
						</div>
					</div>


				</div>
			</c:forEach>

		</div>
  </div>


</body>

</html>