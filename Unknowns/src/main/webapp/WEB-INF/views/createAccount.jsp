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
</head>

<body>
<div class="screen">
    <div id="signInDiv">

        <div class="signin">
            <div class="content">
                <div class="loginText">
                    <p>Unknowns</p>
                    <p style="font-size: 16px !important;">Create your account!</p>
                </div>

                <form action="signUp" method="post">
                    <div class="signUpFirstName">
                        <input type="text" placeholder="First name"  name="name" required>
                    </div>
                    <div class="SignUpLastName" style="padding-top: 8px; display: block;">
                        <input type="text" placeholder="Last name" name="lastname" required>
                    </div>
                    <div class="signUpEmail" style="padding-top: 8px; padding-bottom: 8px">
                        <input type="email" placeholder="Email" name="email" required>
                    </div>
                    <div class="signUpNickname" style=" padding-bottom: 8px">
                        <input type="nickname" placeholder="Nickname" name="nickname" required>
                    </div>
                    <div class="signUpPassword" style=" padding-bottom: 8px">
                        <input type="password" placeholder="Password" name="password" required>
                    </div>
                    <div class="signUpHintcode" style=" padding-bottom: 8px">
                        <input type="hintcode" placeholder="Hint Code" name="hintcode" required>
                    </div>
                    <div class="signUpType" style=" padding-bottom: 8px">
                    	<select>
                    		<option value="1">Computer</option>
                    		<option value="2">Hospital</option>
                    		<option value="3">Law</option>
                    	</select>
                    </div>
                    
                     	 <%
    						if(null!=session.getAttribute("warning")){%>
        					<div class="warning" style="font-size:14px; line-height: 0px;"><%=session.getAttribute("warning")%></div>
        					<%session.invalidate(); %>
   						<%}%>
                    <button style="position: relative; left: 150px;" class="btn btn-dark"  type="submit">
                        Submit
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>

</html>
