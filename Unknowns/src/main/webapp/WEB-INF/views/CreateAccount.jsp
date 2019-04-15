<!DOCTYPE>
<html>

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sign in</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body style="background-color: #008080">
<div class="screen" style="height:100%; width:100%; padding-top: 235px;">
    <div id="signInDiv">

        <div class="signin">
            <div class="content">
                <div class="loginText">
                    <p>Unknowns</p>
                    <p style="font-size: 16px !important;">Create your account!</p>
                </div>

                <form action="singUp">
                    <div class="signUpFirstName">
                        <input type="text" placeholder="First name" required>
                    </div>
                    <div class="SignUpLastName" style="padding-top: 8px; display: block;">
                        <input type="text" placeholder="Last name" required>
                    </div>
                    <div class="signUpEmail" style="padding-top: 8px; padding-bottom: 8px">
                        <input type="email" placeholder="Email" required>
                    </div>
                    <div class="signUpNickname" style=" padding-bottom: 8px">
                        <input type="nickname" placeholder="Nickname" required>
                    </div>
                    <div class="signUpPassword" style=" padding-bottom: 8px">
                        <input type="password" placeholder="Password" required>
                    </div>
                    <div class="signUpHintcode" style=" padding-bottom: 8px">
                        <input type="hintcode" placeholder="Hint Code" required>
                    </div>
                    <div class="warning" style="font-size:14px; line-height: 0px;">
                    </div>
                    <button type="submit">
                        Submit
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>

</html>
<style>
    #signInDiv {
        background-image: url(win95.png);
        background-repeat: no-repeat;
        background-size: 700px 500px;
        background-position: center;
    }

    .signin {
        font-family: Arial;
        height: 451px;
        width: 460px;
        padding: 48px 40px 36px;
        margin: auto;
    }

    p {
        font-family: 'Courier New', Courier, monospace;
        font-weight: bolder !important;
        font-weight: 400;
        font-size: 28px;
        color: #202124;
        text-align: center;
    }

    html {
        font-family: 'Courier New', Courier, monospace;
        font-weight: bolder !important;
        overflow: hidden;
    }

    input {
        width: 268px !important;
        height: 36px !important;
        display: block;
        margin-left: auto;
        margin-right: auto;
        padding: 13px 15px;
        border: 1px solid #008080;
    }

    button {
        color: black;
        font-size: 18px;
        position: relative;
        left: 190px;
    }
</style>