<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<%@ include file="404style.css"%>
	<title>Login</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:700,900" rel="stylesheet">

	<!-- Custom stlylesheet -->

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>

	<div id="notfound">
		<div class="notfound">

			<div class="notfound-404">
				<h1>LifeCycle</h1>
				<h2>Login</h2>
				
			</div>
			<form action="signIn" method="POST">
					<input id="notfound-input" type="text" placeholder="email" name="email">
					<input id="notfound-input" type="text" placeholder="password" name="password">
					<br>
					<br>
					<input formaction="forgetPassword" id="notfound-input_submit" type="submit" value="Forget Password">
					<input formaction="createAccount" id="notfound-input_submit" type="submit" value="Register">
					<input type="submit" id="notfound-input_submit" type="submit" value="Login" name="">
					<%
    						if(null!=session.getAttribute("warning")){%>
        					<div class="warning" style="font-size:14px; line-height: 0px;"><%=session.getAttribute("warning")%></div>
        					<%session.invalidate(); %>
   					<%}%>
				</form>
		</div>
	</div>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>