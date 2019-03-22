<!DOCTYPE <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sign in</title>
    <link rel="icon" href="./img/image.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="screen" style="height:100%; width:100%; padding-top: 235px;">
    <div class="signin"
         style="font-family:Arial; height: 551px; width: 460px; padding: 48px 40px 36px; border:1px solid #dadce0; border-radius: 2%; margin: auto">
        <div class="content">
            <div class="logo">
                <a href="#"><img src="./img/image.png"
                                 style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;"></a>
            </div>
            <div class="loginText">
                <p style="font-weight:400; font-size: 24px; color: #202124; text-align: center; padding-top: 16px;">Sign
                    in</p>
                <p style="font-weight:400; font-size: 16px; color: #202124; text-align: center;">Use your Strategy Game
                    Account</p>
            </div>

            <form action="signIn">

                <div class="loginEmail" style="padding-top: 8px; padding-bottom: 8px">
                    <input type="email" name="loginUsername" required
                           style="width:368px !important; height:56px !important; display: block; margin-left: auto; margin-right: auto; padding:13px 15px; border:1px solid #dadce0"
                           type="text" placeholder="Email or Username">
                </div>
                <div class="loginPassword" style="padding-top: 8px; padding-bottom: 8px">
                    <input type="password" name="loginPassword" required
                           style="width:368px !important; height:56px !important; display: block; margin-left: auto; margin-right: auto; padding:13px 15px; border:1px solid #dadce0"
                           type="text" placeholder="Enter your password">
                </div>
                <div class="forgot-password">
                    <button style="background: white; border: 1px solid white; color: blue; font-size: 12px">Forget
                        password?
                    </button>
                </div>
                <button formaction="createAccount" style="background: white; border: 1px solid white; color: blue;">Create account</button>
                <button type="submit"
                        style="float: right; display: block; background-color:#1a73e8; color:white; font-weight: 500; border-radius: 6%; border: #1a73e8 solid 1px; width: 88px; height: 36px;">
                    Next
                </button>

            </form>
        </div>
    </div>
</div>

</body>
</html>