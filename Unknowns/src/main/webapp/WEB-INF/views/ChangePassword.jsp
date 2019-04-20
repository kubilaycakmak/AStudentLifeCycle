<!DOCTYPE>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="b2.css" />
    <title>Sign in</title>
</head>

<body>
    <div class="screen">
        <div id="signInDiv">

            <div class="signin">
                <div class="content">

                    <div class="loginText">
                        <br><br>
                        <p>Unknowns</p>
                        <p style="font-size: 16px !important;">Change your password!</p>
                    </div>

                    <form action="changePass">

                        <div class="changePassword" style="padding-top: 8px; padding-bottom: 8px">
                            <input type="password" required placeholder="Enter new password">
                        </div>
                        <div class="changePassword" style="padding-top: 8px; padding-bottom: 8px">
                            <input type="password" required placeholder="Re-enter new password">
                        </div>
                        <div class="buttons">

                            <button class="btn btn-dark" type="">
                                Create Account
                            </button>
                            <button  class="btn btn-dark" type="submit">
                                Submit
                            </button>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>