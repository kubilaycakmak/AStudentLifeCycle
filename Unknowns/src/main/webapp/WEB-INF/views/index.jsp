<head>
    <title>Life Cycle</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="format-detection" content="telephone=no">
    <%@ include file="main.css" %>

</head>

<body data-gr-c-s-loaded="true" style="">
<div id="header" role="banner">
    <div id="headbar" class="cityofcrime" style="display: block;">
        <ul>
            <li><a href="">About Us</a></li>
            <li><a href="help">Help</a></li>
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
            <div class="StartImage gameimage" style="height: 20px !important;"></div>
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
                        <h3 class="register">Register to join Life-Cycle!</h3>
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
                        <h5> <%if (null != session.getAttribute("warningUp")) {%>
                            <td><h4 class="required"><%=session.getAttribute("warningUp")%>
                    </h4></td>
                        <%session.removeAttribute("warningUp");%>
                        <%}%>

                            <input type="submit" value="Register" class="cnf btn btn-dark">
                        </p>
                    </div>
                </form>
            </div>
        <p>The game is played in real time and the game keeps on going even when you're not logged in.
            Success in the game is determined by careful strategy and good timing, not by constant online
            presence. It's perfectly possible to be successful in the game by logging in a couple of times a
            week to check up on things.</p>
        <p>Life Cycle is free of charge and no downloads are necessary to play it. If you can read this
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
                     <%if (null != session.getAttribute("warningIn")) {%>
                        <td><p class="required"><%=session.getAttribute("warningIn")%>
                        </p></td>
                    <%session.removeAttribute("warningIn");%>
                    <%}%>

                        <input type="submit" name="loginSubmit" value="OK!" onclick="" id="loginSubmit"
                               class="cnf btn btn-dark">
                    </p>
                </form>
            </div>
            <div class="box" style="-webkit-border-radius: 7px !important; height: 130px;">
                    <h2>TOP 5 - Clever User</h2>
                    <table>
                        <tr>
                            <th>Position&nbsp;</th>
                            <th>Nickname&nbsp;</th>
                            <th>Experience&nbsp;</th>
                        </tr>
                    <tr>
                        <td>1</td>
                        <td>${top5Xp.get(0).nickname }</td>
                        <td>${top5Xp.get(0).userinfo.xp }</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>${top5Xp.get(1).nickname }</td>
                        <td>${top5Xp.get(1).userinfo.xp }</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>${top5Xp.get(2).nickname }</td>
                        <td>${top5Xp.get(2).userinfo.xp }</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>${top5Xp.get(3).nickname }</td>
                        <td>${top5Xp.get(3).userinfo.xp }</td>
                    </tr>
  					<tr>
                        <td>5</td>
                        <td>${top5Xp.get(4).nickname }</td>
                        <td>${top5Xp.get(4).userinfo.xp }</td>
                    </tr>

                </table>
            </div>
            <div class="box" style="-webkit-border-radius: 7px !important; height: 130px;">
                <h2>TOP 5 - Rich User</h2>
                <table>
                    <tr>
                        <th>Position&nbsp;</th>
                        <th>Nickname&nbsp;</th>
                        <th>Money&nbsp;</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>${top5Money.get(0).nickname }</td>
                        <td>${top5Money.get(0).userinfo.bank + top5Money.get(0).userinfo.money}</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>${top5Money.get(1).nickname }</td>
                        <td>${top5Money.get(1).userinfo.bank + top5Money.get(1).userinfo.money}</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>${top5Money.get(2).nickname }</td>
                        <td>${top5Money.get(2).userinfo.bank + top5Money.get(2).userinfo.money}</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>${top5Money.get(3).nickname }</td>
                        <td>${top5Money.get(3).userinfo.bank + top5Money.get(3).userinfo.money}</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>${top5Money.get(4).nickname }</td>
                        <td>${top5Money.get(4).userinfo.bank + top5Money.get(4).userinfo.money}</td>
                    </tr>
                </table>
            </div>
            <div class="box" style="-webkit-border-radius: 7px !important; height: 50px;">
                <h2>STATUS</h2>
                <p><strong>Total User: </strong> ${countOfUser}</p>
            </div>
            <div class="box" style="-webkit-border-radius: 7px !important; height: 85px;">
                <h2>Information</h2>
                <p><strong>Current Version: </strong> BETA</p>
                <p><strong>Next Version: </strong> STABLE</p>
                <p><strong>Update: </strong> 25 May 2019</p>
            </div>
            <style>
                td,th{
                    font-size: 10px;
                    padding: auto;
                    margin: auto;
                    text-align: center;
                    color: white;
                }
            </style>
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