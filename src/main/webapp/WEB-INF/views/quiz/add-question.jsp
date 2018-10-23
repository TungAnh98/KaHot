<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Create Question | Ká Hột</title>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/custom.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/radio.css" />
</head>

<body>
    <nav class="navbar bg-dark">
        <a href="home.html"><img src="../images/logo_kahot.png" alt="Error Logo !" /></a>
        <div class="button-right">
            <a href="add-question.html"><button class="btn btn-info btn-sm">Create More...</button></a>
            <a href="my-quiz.html"><button class="btn btn-success btn-sm">Done</button></a>
        </div>
    </nav>
    <div class="jumbotron room-jumbo">
        <div>
            <h1 class="text-center"><i class="fas fa-folder"></i> Create Question</h1>
        </div>
        <div class="container">
            <p><b>My Quizz 111111 11111 111111111 222222222 33333333333333</b></p>
            <p class="public-quiz"><i class="fas fa-globe-asia"></i> Public</p>
            <p><b>20</b> Question</p>
        </div>
        <div>
            <h2 class="text-center"><i class="far fa-question-circle"></i> Question 1</h2>
        </div>
        <div class="from-group">
            <br />
            <form>
                <div class="row">
                    <div class="col">
                        <label>Answer 1 <small style="color: grey">(required)</small></label>
                        <input type="text" class="form-control">
                        <label>
                            <input type="radio" class="option-input radio" name="example" />
                        </label>
                    </div>
                    <div class="col">
                        <label>Answer 2 <small style="color: grey">(required)</small></label>
                        <input type="text" class="form-control">
                        <label>
                            <input type="radio" class="option-input radio" name="example" />
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <label>Answer 3</label>
                        <input type="text" class="form-control">
                        <label>
                            <input type="radio" class="option-input radio" name="example" />
                        </label>
                    </div>
                    <div class="col">
                        <label>Answer 4</label>
                        <input type="text" class="form-control">
                        <label>
                            <input type="radio" class="option-input radio" name="example" />
                        </label>
                    </div>
                </div>
            </form>
            <br />
        </div>
    </div>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
</body>

</html>