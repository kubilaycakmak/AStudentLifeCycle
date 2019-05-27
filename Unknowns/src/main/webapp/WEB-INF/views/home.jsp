<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <title>
        LifeCycle
    </title>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
            integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <%@ include file="main.css" %>
</head>
<body data-gr-c-s-loaded="true" style="">
<form name="javaForm" method="post" action="./Character" id="javaForm">
    <div id="header" role="banner">
        <div id="headbar" class="cityofcrime" style="display: block;">
            <ul>
                <form method="post">
                    <li><input class="input-nav" formaction="/home" type="submit"
                               value="Welcome" name="welcome"></li>
                    <li><input class="input-nav" formaction="/user" type="submit"
                               value="Character" name="character"></li>
                    <li><input class="input-nav" formaction="/help" type="submit"
                               value="Help" name="help"></li>
                    <li><input class="input-nav" formaction="/logout"
                               type="submit" value="Logout" name="logout"></li>
                    <li style="color: #1b1819 !important;">
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">
                            Live!
                        </button>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog">

                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Town Square</h4>
                                    </div>
                                    <div class="modal-body">
                                        <textarea id="messagesTextArea" rows="10" cols="46"></textarea>
                                        <textarea id="usersTextArea" rows="10" cols="10" readonly="readonly"></textarea><br>
                                        <input id="textMessage" size="56" type="text" value="${user.nickname }"><input
                                            type="button" onclick="sendMessage();" id="sendButton" value="Send">
                                        <script type="text/javascript">

                                            $(window).on('shown.bs.modal', function () {
                                                $('#code').modal('show');
                                                document.getElementById("sendButton").click();
                                            });

                                            var webSocket = new WebSocket("ws://104.211.2.147:8080/WebSocketTest03/endpointserverdemo");
                                            var messagesTextArea = document.getElementById("messagesTextArea");
                                            webSocket.onmessage = function processMessage(message) {
                                                var jsonData = JSON.parse(message.data);
                                                if (jsonData.message != null)
                                                    messagesTextArea.value += jsonData.message + "\n";
                                                if (jsonData.users != null) {
                                                    usersTextArea.value = "";
                                                    var i = 0;
                                                    while (i < jsonData.users.length)
                                                        usersTextArea.value += jsonData.users[i++] + "\n";
                                                }
                                            }

                                            function sendMessage() {
                                                webSocket.send(textMessage.value);
                                                textMessage.value = "";
                                            }

                                            window.onbeforeunload = function () {
                                                webSocket.onclose = function () {
                                                };
                                                webSocket.close();
                                            }
                                        </script>
                                        <style>
                                            .modal {

                                            }

                                            .modal-header {
                                                background-color: darkslategray;
                                            }

                                            .modal-body {
                                                background-color: darkslategray;
                                            }

                                            .modal-footer {
                                                background-color: darkslategray;
                                            }

                                            #sendButton {
                                                background-color: darkslategray;
                                                color: white;
                                            }
                                        </style>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </form>
            </ul>
        </div>
    </div>
    <div id="ppm-wrapper">
        <div id="sub-header" role="banner">

            <div id="header-logo">
                <img alt="" height="100" width="500"
                     src="https://github.com/kubilayckmk/AStudentLifeCycle/blob/master/LogoMakr_1sEpyX.png?raw=true">
            </div>
        </div>
        <div id="ppm-main">
            <div id="ppm-content" role="main" class="content">
                <div class="box ofauto charPresBox">
                    <div id="karakter_basarilari" class="characterAchievements">
                        <div title="achv1" class="Achievement Achievement_196"></div>
                        <div title="achv2" class="Achievement Achievement_254"></div>
                    </div>
                    <h2>${user.nickname}</h2>
                    <div class="avatar pointer idTrigger"
                         style="background: url('https://cdn1.iconfinder.com/data/icons/avatars-1-5/136/64-512.png') no-repeat;"
                         onclick="window.location.href='';">
                        <div class="idHolder" style="display: none;"></div>
                    </div>
                    <div class="float_left characterPresentation">
                        <p>
                            is a
                            <strong>
                                <c:if test="${user.userinfo.type == 1}">
                                    Computer Student
                                </c:if>
                                <c:if test="${user.userinfo.type == 2}">
                                    Medicine Student
                                </c:if>
                                <c:if test="${user.userinfo.type == 3}">
                                    Law Student
                                </c:if>

                            </strong> and is located in <a href="">Istanbul Aydin University</a>
                        </p>
                        <p>
                            <strong></strong>during off hours and is trying to <strong>improve
                            skills</strong> in order to get ahead professionally.
                        </p>

                        <div class="tb nobmargin"
                             id="ctl00_cphLeftColumn_ctl02_tbxStatement">
                            <div class="tbc tbcw">
                                <span class="em">I guess I need to work for my future...</span>
                            </div>
                        </div>
                        <br></br>
                        <div id="stats">
                            <table align="center">
                                <tbody>
                                <tr>
                                    <td>Stamina:</td>
                                    <td class="stat"><strong>${user.userinfo.stamina}</strong></td>
                                    <td>Money:</td>
                                    <td class="stat"><strong>$ ${user.userinfo.money}</strong></td>
                                </tr>
                                <tr>
                                    <td>Experience:</td>
                                    <td class="stat"><strong>${user.userinfo.xp}</strong></td>
                                    <td>Company:</td>
                                    <td class="stat"><c:choose>
                                        <c:when test="${user.userinfo.company == null}">
                                            <a href="Company">Create!</a>
                                        </c:when>
                                        <c:when test="${user.userinfo.company != null}">
                                            <strong>${user.userinfo.company.name}</strong>
                                        </c:when>
                                    </c:choose></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="clear"></div>
                <div id="ctl00_cphLeftColumn_ctl00_divRecentEvents" class="box">
                    <h2>Recent diary mail</h2>
                    <ul class="noheader diaryExtraspace">
                        <p>Teaching staff say that universities are risking their reputations by taking on students who
                            are not capable of advanced levels of learning,” ABC promo for Monday’s Four Corners.

                            Universities, “are selling access to millions of foreign students and reaping many billions
                            of dollars of revenue but now the alarm has been raised that increasingly Australian
                            universities are exposing themselves to corrupt practise, to lower standards, Four Corners,
                            April 20 2015.</p>
                    </ul>
                </div>
                <div id="ctl00_cphLeftColumn_ctl00_pnlHotTrace" class="box">
                    <h2>Dead Lines</h2>
                    <script type="text/javascript">
                        window.addEventListener("load",
                            function () {
                                var timer = parseInt(document.getElementById("timer").innerHTML);
                                var timer1 = parseInt(document.getElementById("timer1").innerHTML);

                                function startTimerFreelance(duration, display) {
                                    var timer = duration, number;
                                    setInterval(function () {
                                        number = parseInt(timer, 10);
                                        number = number < 10 ? "0" + number : number;
                                        display.textContent = number;
                                        if (--timer < 0) {
                                            timer = 0;
                                        }
                                    }, 1000);
                                }

                                function startTimerFastfood(duration, display) {
                                    var timer1 = duration, number;
                                    setInterval(function () {
                                        number = parseInt(timer1, 10);
                                        number = number < 10 ? "0" + number : number;
                                        display.textContent = number;

                                        if (--timer1 < 0) {
                                            timer1 = 0;
                                        }
                                    }, 1000);
                                }

                                var freelance = timer,
                                    display = document.querySelector('#time1');
                                startTimerFreelance(freelance, display);

                                var fastfood = timer1,
                                    display = document.querySelector('#time2');
                                startTimerFastfood(fastfood, display);


                            });
                    </script>
                    <p id="asd"></p>
                    <p id="timer" style="display: none">${freelancetime}</p>
                    <p id="timer1" style="display: none">${fastfoodtime}</p>
                    <c:if test="${freelancetime == 0}">
                        <h4>Freelance Job:</h4>
                        <p> You can work on
                            <srong><a href="Freelance">Freelance</a></srong>
                            job!
                        </p>
                    </c:if>
                    <c:if test="${freelancetime != 0}">
                        <h4>Freelance Job: </h4>
                        <p>You have <span id="time1" style="color: white;"></span> seconds to finish!</p>
                    </c:if>

                    <c:if test="${fastfoodtime == 0}">
                        <h4>FastFood:</h4>
                        <p> You can eat
                            <srong><a href="FastFood">FastFood</a></srong>
                            !
                        </p>
                    </c:if>
                    <c:if test="${fastfoodtime != 0}">
                        <div><h4>FastFood: </h4>
                            <p>You have <span id="time2" style="color: white;"></span> seconds to finish!</p></div>
                    </c:if>
                </div>
                <div class="box">
                    <h2>Company Information</h2>
                    <c:if test="${user.userinfo.company == null}">
                        <h4>Don't you have any Company? Why don't you go Company page or <a href="Company">click here
                            to </a> create a new one!</h4>
                    </c:if>
                    <c:if test="${user.userinfo.company != null}">
                        <h4>Company Name: </h4>
                        <p>${user.userinfo.company.name }</p>
                    </c:if>
                </div>
            </div>
            <div id="ppm-sidemenu" role="navigation">
                <div class="box">
                    <div class="menu">
                        <h3 class="menu">Menu</h3>
                        <ul>
                            <li id="mnuToolTipFocus"><a href="Freelance">Freelance</a></li>
                            <li id="mnuToolTipImproveCharacter"><a href="FastFood">FastFood</a></li>
                            <li><a href="Bank">Bank</a></li>
                            <li><a href="Store">Store</a></li>
                            <li><a href="Hack">Hack</a></li>
                            <li><a href="Jail">Jail</a></li>
                            <li><a href="Company">Company</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear center" style="background-color: transparent;">
            <img
                    src="https://github.com/kubilayckmk/cityofCrime/blob/master/jarcoding.png?raw=true"
                    style="position: relative; left: -20;">
        </div>
        <div id="ppm-footer"></div>
    </div>
    <div id="ppm-bottom-spacer"></div>
    </div>
</form>

</body>

</html>