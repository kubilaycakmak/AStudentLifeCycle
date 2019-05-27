<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <title>
        LifeCycle
    </title>
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" type="text/css"/>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
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
                <div id="robbery">
                    <img
                            src="https://github.com/kubilayckmk/AStudentLifeCycle/blob/master/Unknowns/src/main/webapp/WEB-INF/views/assets/images/ff.jpeg?raw=true"
                            width="212px" height="140px">
                    <p>Fasfood is healthly for human health, So You need to eat..

                        Wait wait. its kinda little bit dangerious.</p>
                </div>
                <div class="clear"></div>


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
                            <li id="mnuToolTipSongs"><a href="Hack">Hack</a></li>
                            <li><a href="Jail">Jail</a></li>
                            <li><a href="Company">Company</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="box" id="crimes">
                <h2>Fastfood</h2>
                <p>
                    <form action="fastfood" method="POST">
                        <select name="fastfoodChoose" id="choice"
                                class="maxwidth125px round">
                            <option value="info">Select the Menu</option>
                            <option value="m1">Menu1</option>
                            <option value="m2">Menu2</option>
                            <option value="m3">Menu3</option>
                            <option value="m4">Menu4</option>
                            <option value="m5">Menu5</option>
                        </select><br>
                <p id="timer" style="display: none">${fastfoodtime}</p>
                <c:if test="${fastfoodtime != 0}">
                <div><p style="display: none" class="freelanceStatus" ><span id="time1" style="color: white;"></span> seconds left!</p></div>
                </c:if>
                <c:if test="${fastfoodtime == 0}">
                <div><p style="display: none" class="freelanceStatus">Free to do Freelance!</p></div>
                </c:if>

                <script>
                    window.addEventListener("load", function () {
                        var choice = document.getElementById("choice");
                        var timer = parseInt(document.getElementById("timer").innerHTML);
                        var freeElement = document.querySelectorAll("td > p");
                        var timer = parseInt(document.getElementById("timer").innerHTML);
                        var status = document.getElementsByClassName("freelancestatus")[0];

                        if (timer > 0) {
                            document.getElementById("submitButton").disabled = true;
                            document.getElementById("submitButton").style.color = "red";
                            status.style.display = "block";
                        } else if (timer == 0) {
                            document.getElementById("submitButton").disabled = false;
                            document.getElementById("submitButton").style.color = "orange";
                            status.style.display = "none";
                            timer = 0;
                        }


                        choice.addEventListener("change", function () {
                            var freeOption = this.options[this.selectedIndex].value;
                            if (freeOption == "info") {
                                document.getElementById("submitButton").disabled = true;
                                document.getElementById("submitButton").style.color = "grey";

                            } else if (freeOption == "m1") {
                                freeElement[0].textContent = "+  10";
                                freeElement[1].textContent = "-  $5";
                                freeElement[2].textContent = "120 second";
                            } else if (freeOption == "m2") {
                                freeElement[0].textContent = "+  20";
                                freeElement[1].textContent = "-  $15";
                                freeElement[2].textContent = "240 second";
                            } else if (freeOption == "m3") {
                                freeElement[0].textContent = "+  40";
                                freeElement[1].textContent = "-  $20";
                                freeElement[2].textContent = "480 second";
                            } else if (freeOption == "m4") {
                                freeElement[0].textContent = "+  50";
                                freeElement[1].textContent = "-  $20";
                                freeElement[2].textContent = "960 second";
                            } else if (freeOption == "m5") {
                                freeElement[0].textContent = "+  100";
                                freeElement[1].textContent = "-  $25";
                                freeElement[2].textContent = "1920 second";
                            }
                        });

                        function startTimer(duration, display) {
                            var timer = duration, number;
                            setInterval(function () {
                                number = parseInt(timer, 10);
                                number = number < 10 ? "0" + number : number;
                                display.textContent = number;

                                if (--timer < 0) {
                                    timer = 0;
                                    document.getElementById("submitButton").disabled = false;
                                    status.style.display = "none";
                                }
                            }, 1000);
                        }
                        

                        var fiveMinutes = timer,
                            display = document.querySelector('#time1');
                        startTimer(fiveMinutes, display);
                    });
                </script>
                <p class="actionbuttons">
                    <input type="submit" name="ctl00$cphLeftColumn$ctl00$btnFind"
                           value="Eat me!" id="submitButton">
                </p>

</form>
</p>

</div>
<table class="data">
    <tbody class="data-tbody">
    <tr>
        <th colspan="2" class="single">Freelance Job Info</th>
    </tr>
    <tr class="odd">
        <td class="width40" id="stamina">Stamina required:</td>
        <td><p class="required">-</p></td>
    </tr>
    <tr class="even">
        <td id="money">Money:</td>
        <td><p class="required">-</p></td>
    </tr>
    <tr class="odd">
        <td id="time">Time:</td>
        <td><p class="required">-</p></td>
    </tr>
    <tr>
        <td>Status:</td>

        <% if (null != session.getAttribute("fastfood")) {%>
        <td><p class="required"><%=session.getAttribute("fastfood")%>
        </p></td>
        <%session.removeAttribute("fastfood");%>
        <%}%>
    </tr>
    </tbody>
</table>
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