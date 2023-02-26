<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link href="css/main.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <title>CATS - Login</title>
</head>
<body>
    <div style="margin: 10em auto;">

        <div style="display: flex; justify-content: center; align-items: center">
            <form id="loginForm" class=form action="/home.jsp" method="post">
                <div>
                    <img id="cat-login" src="img/Cat.png">
                </div>

                <div class="mb-3">
                    <label class="form-label" for=username>Username:</label>
                    <input class="form-control" id=username name="username"/>
                </div>
                <div class="mb-3">
                    <label class="form-label" for=username>Password</label>
                    <input class="form-control" id=password name="password" type="password"/>
                </div>
            </form>
        </div>
        <div style="display: flex; justify-content: center; align-items: center">
            <div style="display: flex; justify-content: space-around; align-items: center; width: 400px;">
                <button id="backToIndex" class="btn btn-info">Back to Index</button>
                <button id="login" class="btn btn-primary" type=submit>Login</button>
            </div>
        </div>


    </div>

    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="js/login.js"></script>
</body>
</html>