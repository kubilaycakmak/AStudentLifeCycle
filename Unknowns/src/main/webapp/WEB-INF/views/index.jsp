<head>
    <title>City of Crime</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" type="text/css" th:href="@{/css/main.css}" />
    <link rel="stylesheet" type="text/css" href="/static/css/main.css">
    <%@ include file="main.css"%>

</head>

<body data-gr-c-s-loaded="true" style="">
    <div id="header" role="banner">
        <div id="headbar" class="cityofcrime" style="display: block;">
            <ul>
                <li><a href="">Welcome</a></li>
                <li><a href="">About Us</a></li>
                <li><a href="">Help</a></li>
                <li><a href="">Contact</a></li>
            </ul>
        </div>
    </div>
    <div id="ppm-wrapper">
        <div id="sub-header" role="banner" style="height: 0 !important;">

            <div id="header-logo">
            </div>
        </div>
        <div id="ppm-main">
            <div id="topcolumn">
                <div class="StartImage gameimage" style="height: 100px !important;"></div>
            </div>
            <div id="ppm-content" role="main" class="content">
                <h1 id="welcome">Welcome to Life-Cycle</h1>
                <p>Life-Cycle is an online role-playing game and community where the players strive for fame in a
                    virtual student lifecycle.</p>
                <p>You start the game as a complete nobody with nothing but your hopes and dreams. You can computer student,
                    hacking, and begin to create your future. Play your cards right and you'll soon
                    </p>

                <div class="box signupBox signup_Random_2">
                    <form action="/signUp" method="post">
                        <div class="width49 float_left">
                            <h3 class="register">Register to join the war!</h3>
                            <p>
                                <strong>User Name:</strong><br>
                                <input name="nickname" type="text" maxlength="20" class="round width90 text-dark">
                            </p>
                            <p>
                                <strong>First Name:</strong><br>
                                <input name="name" type="text" maxlength="20" class="round width90">
                            </p>
                            <p>
                                <strong>Last Name:</strong><br>
                                <input name="lastname" type="text" maxlength="100" class="round width90">
                            </p>
                            <p>
                                <strong>Email:</strong><br>
                                <input name="email" type="text" maxlength="100" class="round width90">
                            </p>
                            <p>
                                <strong>Password:</strong><br>
                                <input name="password" type="password" maxlength="20" class="round width90">
                            </p>
                            <p>
                                <strong>HintCode:</strong><br>
                                <input name="hintcode" type="password" maxlength="20" class="round width90">
                            </p>
                            <p>
                                <strong>Style:</strong>
                                <br>
                                <select name="type" class="selectpicker round">
                                    <option data-icon="fa-heart" value="1">Computer</option>
                                    <option data-icon="fa-heart" value="2">Hospital</option>
                                    <option data-icon="fa-heart" value="3">Law</option>
                                </select>
                            </p>
                            <p>
                                <input type="submit" value="Register" class="cnf btn btn-dark">
                            </p>
                        </div>
                    </form>
                </div>
                <p>The game is played in real time and the game keeps on going even when you're not logged in.
                    Success in the game is determined by careful strategy and good timing, not by constant online
                    presence. It's perfectly possible to be successful in the game by logging in a couple of times a
                    week to check up on things.</p>
                <p>City of Crime is free of charge and no downloads are necessary to play it. If you can read this
                    you're
                    good to go.</p>
            </div>
            <div role="navigation">
                <div id="ppm-sidemenu" role="navigation">
                    <div class="box" style="-webkit-border-radius: 7px !important;">

                        <form action="/signIn" method="post">
                            <h2>Log In</h2>
                            <p>
                                <strong>Email:</strong><br>
                                <input name="email" type="text" maxlength="100" class="round width100">
                            </p>
                            <p>
                                <strong>Password:</strong><br>
                                <input name="password" type="password" maxlength="100" class="round width100">
                            </p>
                            <p class="right">
                                <input type="submit" name="loginSubmit" value="OK!" onclick="" id="loginSubmit"
                                    class="cnf btn btn-dark">
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear center" style="background-color: #564d4f;">
            <img src="https://github.com/kubilayckmk/cityofCrime/blob/master/jarcoding.png?raw=true"
                style="position: relative; left: -20;">
        </div>
        <div id="ppm-footer"></div>
    </div>
    <div id="ppm-bottom-spacer"></div>
</body>

</html>