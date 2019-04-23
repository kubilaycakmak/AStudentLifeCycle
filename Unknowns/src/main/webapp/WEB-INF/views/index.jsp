<!DOCTYPE>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sign in</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
                        <p style="font-size: 16px !important;">Use your Strategy Game Account</p>
                    </div>

                    <form action="signIn" method="POST">

                        <div class="loginEmail" style="padding-top: 8px; padding-bottom: 8px">
                            <input type="input" required type="text"
                                placeholder="Email or Username" name="email">
                        </div>
                        <div class="loginPassword" style="padding-top: 8px; padding-bottom: 8px">
                            <input type="password"  required type="text"
                                placeholder="Enter your password" name = "password">
                        </div>
                         <%
    						if(null!=session.getAttribute("warning")){%>
        					<div class="warning" style="font-size:14px; line-height: 0px;"><%=session.getAttribute("warning")%></div>
        					<%session.invalidate(); %>
   						<%}%>
                        <button style="position: relative; left: 10px;" class="btn btn-dark" formaction="forgetPassword">Forget password?</button>
                        <button style="position: relative; left: 10px;" class="btn btn-dark" formaction="createAccount">Create account</button>
                        <button style="position: relative; left: 10px;" class="btn btn-dark" type="submit">Sign in</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>