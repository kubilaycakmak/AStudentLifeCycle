<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<%@ include file="404style.css"%>
	<title>404 HTML Template by Colorlib</title>

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

				<h2>Register</h2>

			</div>
			<form action="signUp" method="POST">
			<%
    						if(null!=session.getAttribute("warning")){%>
        					<div class="warning" style="font-size:14px; line-height: 0px;"><%=session.getAttribute("warning")%></div>
        					<%session.invalidate(); %>
   					<%}%>
				<input id="notfound-input" type="text" placeholder="First Name" name="name" required>
				<input id="notfound-input" type="text" placeholder="Last Name" name="lastname" required>
				<input id="notfound-input" type="text" placeholder="Email" name="email" required>
				<input id="notfound-input" type="text" placeholder="Username" name="nickname" required>
				<input id="notfound-input" type="text" placeholder="Password" name="password" required>
				<input id="notfound-input" type="text" placeholder="Hint Code" name="hintcode" required>
				<br>
					<select id="notfound-input" name="type">
						<option value="1">Computer</option>
						<option value="2">Hospital</option>
						<option value="3">Law</option>
					</select>
					<br>
					<br>
				<a href="index">Login</a>
				<input id="notfound-input_submit" type="submit" value="Register">
			</form>
		</div>
		
	</div>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>