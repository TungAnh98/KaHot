<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign in | Ká Hột</title>
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
        <a href="home.html"><img src="${pageContext.request.contextPath}/resources/images/logo_kahot.png" alt="Error Logo !" /></a>
        <div class="button-right">
            <span>Not got an account?</span>
            <a href="sign-up-page.html"><button class="btn btn-warning btn-sm">Sign up</button></a>
        </div>
    </nav>
    <div class="social-button">
        <h2 style="text-align:center;">Log in</h2>
        <a href="public-quiz.html"><button class="btn btn-social btn-google">
            <i class="fab fa-google"></i> Log in with Google
        </button></a>
        <button class="btn btn-social btn-facebook">
            <i class="fab fa-facebook-f"></i> Log in with Facebook
        </button>
        <button class="btn btn-social btn-github">
            <i class="fab fa-github"></i> Log in with GitHub
        </button>
    </div>
</body>

</html>