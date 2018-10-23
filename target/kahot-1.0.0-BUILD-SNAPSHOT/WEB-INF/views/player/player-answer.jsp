<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>In Game | Ká Hột</title>
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
</head>

<body>
    <nav class="navbar bg-dark user-answer">
        <div class="navbar navbar-brand"><b>PIN:</b>&nbsp;8888888 - Question 1 of 999</div>
        <div class="navbar navbar-brand"><b>your nick name</b>
            <div style="background-color: white; color: black; text-align: center; border-radius: 5px; margin-left: 10px; width: 100px;"><b>99999</b></div>
        </div>
    </nav>
    <div>
        <form action="player-waiting-answer.html">
            <div class="row" id="row-answer">
                <button class="col-md-5 answer answer-a">
                    <span>A</span>
                </button>
                <button class="col-md-5 answer answer-b">
                    <span>B</button>
                </button>
            </div>
            <div class="row" id="row-answer">
                <button class="col-md-5 answer answer-c">
                    <span>C</span>
                </button>
                <button class="col-md-5 answer answer-d">
                    <span>D</span>
                </button>
            </div>
        </form>
        <br />
    </div>
</body>

</html>