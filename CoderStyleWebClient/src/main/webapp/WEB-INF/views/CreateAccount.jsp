<!DOCTYPE>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sign Up</title>
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
    <div class="larger-container"
         style="font-family:Arial; height: 500px; width: 460px; border:1px solid #dadce0; border-radius: 2%; margin: auto">
        <div class="signup" style="font-family:Arial; height: 400px; width: 460px; padding: 48px 40px 36px; ">
            <div class="content">
                <div class="logo">
                    <a href="#"><img src="./img/image.png"
                                     style="width: 50px; height: 50px; display: block; margin: auto"></a>
                </div>
                <div class="signUpText">
                    <p style="font-weight:400; font-size: 24px; color: #202124; padding-top: 16px;">Create a Strategy
                        Game Account</p>
                </div>
                <form action="singUp">
                    <div class="signUpFirstName"
                         style="padding-top: 8px; padding-bottom: 8px; display: block; float: left; clear: both;">
                        <input style="width:179px !important; height:56px !important; padding:13px 15px; border:1px solid #dadce0; margin-right: 10px;"
                               type="text" placeholder="First name" required>
                    </div>
                    <div class="SignUpLastName" style="padding-top: 8px; padding-bottom: 8px; display: block;">
                        <input style="width:179px !important; height:56px !important; padding:13px 15px; border:1px solid #dadce0"
                               type="text" placeholder="Last name" required>
                    </div>
                    <div class="signUpEmail" style="padding-top: 8px; padding-bottom: 8px">
                        <input style="width:368px !important; height:56px !important; display: block; padding:13px 15px; border:1px solid #dadce0"
                               type="email" placeholder="Email" required>
                    </div>
                    <div class="signUpPassword" style=" padding-bottom: 8px">
                        <input style="width:368px !important; height:56px !important; display: inline-block;padding:13px 15px; border:1px solid #dadce0"
                               type="password" placeholder="Password" required>
                    </div>
                    <div class="warning" style="font-size:14px; line-height: 0px;">
                        <p style="font-size: 12px; color:#5f6368; padding-top: 9px; word-break: break-all">Use 8 or more
                            characters with a mix of letters, numbers</p>
                        <p style="font-size: 12px; color:#5f6368"> & symbols</p>
                    </div>
                    <button type="submit" style="float: right; display: block; background-color:#1a73e8; color:white; font-weight: 500;
                    border-radius: 6%; border: #1a73e8 solid 1px; width: 88px; height: 36px;">
                        Submit
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>