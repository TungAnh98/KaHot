<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Result | Ká Hột</title>
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
    <link rel="icon" type="image/gif" href="../images/Mister-Fantastic.ico" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/custom.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css" />
</head>

<body>
    <nav class="navbar bg-dark show-answer">
        <div class="mx-auto">
            <h3>Program Bug là gì ?</h3>
        </div>
    </nav>
    <div class="jumbotron text-center jumbo-show-answer">
        <div class="result-answer a-answer"><i class="fas fa-check"></i>A - 999</div>
        <div class="result-answer b-answer">B - 999</div>
        <div class="result-answer c-answer">C - 999</div>
        <div class="result-answer d-answer">D - 999</div><br />
        <a href="result.html"><button class="btn btn-lg btn-success" style="float:right;">Next</button></a>
    </div>
    <div class="jumbotron jumbo-show-answer">
        <div class="from-group">
            <form>
                <div class="row">
                    <div class="col-md-5 answer answer-a">
                        <span>A. </span>Chương trình thực hiện không giống như spec, user requirement.
                        <i class="fas fa-check" style="float:right; line-height: 100%; font-size: 40px;"></i>
                    </div>
                    <div class="col-md-5 answer answer-b">
                        <span>B. </span>Chương trình thực hiện không hợp lý với quan điểm user
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5 answer answer-c">
                        <span>C. </span>Chương trình thực hiện đúng như spec nhưng không giống test case
                    </div>
                    <div class="col-md-5 answer answer-d">
                        <span>D. </span>Chương trình thực hiện không giống như Design và test case nhưng theo quan điểm
                        của DEV thì là hợp ný.
                    </div>
                </div>
            </form>
            <br />
        </div>
    </div>
</body>

</html>