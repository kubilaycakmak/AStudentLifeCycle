<!DOCTYPE>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <%@ include file="main.css" %>
    <title>Sign in</title>
</head>

<body>
<div class="screen">
    <div class="container">
        <div class="content">
            <p style="font-size: 16px !important;">Change your password!</p>
        </div>
        <form action="/changePassword" method="post">
            <p>
                <strong>Password:</strong><br>
                <input name="password" type="password" maxlength="20" class="round width90">
            </p>
            <p>
                <strong>Password:</strong><br>
                <input name="password" type="password" maxlength="20" class="round width90">
            </p>
            <input type="submit" value="submit">
        </form>
    </div>
</div>
</body>

</html>