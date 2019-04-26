<!DOCTYPE>
<html>

<head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <%@ include file="style.css"%>
    <%@ include file="b2.css"%>
</head>

<body>
<div class="screen">
    <div id="signInDiv">

        <div class="signin">
            <div class="content">

                <div class="loginText">
                    <br><br><br>
                    <p>Unknowns</p>
                    <p style="font-size: 16px !important;">Find your Account Email!</p>
                </div>

                <form action="forgetPass">
                    <div class="hintCode" style="padding-top: 8px; padding-bottom: 8px">
                        <input type="text" required placeholder="Enter hint code">
                    </div>
                    <div class="loginEmail" style="padding-top: 8px; padding-bottom: 8px">
                        <input required type="email" placeholder="Email">
                    </div>
                    <div class="footer">
                        <button style="position: relative; left: 150px;" class="btn btn-dark"   type="submit">
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