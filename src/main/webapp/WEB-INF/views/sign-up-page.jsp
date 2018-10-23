<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign up | Ká Hột</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/custom.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sign-up.css" />
</head>

<body>
    <nav class="navbar bg-dark justify-content-between">
    		<c:url value="/" var="home"/>
            <a href="${home}"><img src="${pageContext.request.contextPath}/resources/images/logo_kahot.png" alt="Error Logo !" /></a>
        <div class="button-right">
            <span>Already got an account?</span>
            <c:url value="/login" var="login" />
            <a href="${login}"><button class="btn btn-success btn-sm">Login</button></a>
        </div>
    </nav>
    <div class="social-button">
        <h2 style="text-align:center;">Sign up</h2>
        <button class="btn btn-social btn-google">
            <i class="fab fa-google"></i> Sign in with Google
        </button>
        <button class="btn btn-social btn-facebook">
            <i class="fab fa-facebook-f"></i> Sign in with Facebook
        </button>
        <button class="btn btn-social btn-github">
            <i class="fab fa-github"></i> Sign in with GitHub
        </button>
    </div>
</body>

</html>