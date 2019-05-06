<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <title>
        LifeCycle
    </title>
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="format-detection" content="telephone=no">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
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
                    <li><input class="input-nav" formaction="/home" type="submit" value="Welcome" name="welcome"></li>
                    <li><input class="input-nav" formaction="/user" type="submit" value="Character" name="character">
                    </li>
                    <li><input class="input-nav" formaction="/help" type="submit" value="Help" name="help"></li>
                    <li><input class="input-nav" formaction="/logout" type="submit" value="Logout" name="logout"></li>
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
                                        <h4 class="modal-title">HelpDESK</h4>
                                    </div>
                                    <div class="modal-body">
                                        <textarea id="messagesTextArea" rows="10" cols="46"></textarea>
                                        <textarea id="usersTextArea" rows="10" cols="10" readonly="readonly"></textarea><br>
                                        <input id="textMessage" size="52" type="text" value="${user.nickname }"><input
                                            type="button" onclick="sendMessage();" id="sendButton" value="Send">
                                        <script type="text/javascript">

                                            $(window).on('shown.bs.modal', function () {
                                                $('#code').modal('show');
                                                document.getElementById("sendButton").click();
                                            });

                                            var webSocket = new WebSocket("ws://localhost:8080/WebSocketTest03/endpointserverdemo");
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
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </li>
                </form>
            </ul>
        </div>
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

                        <div class="tb nobmargin" id="ctl00_cphLeftColumn_ctl02_tbxStatement">
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
                                    <td>Equipments:</td>
                                    <td class="stat"><strong>DEMO</strong></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="clear"></div>
                <div id="ctl00_cphLeftColumn_ctl00_divRecentEvents" class="box">
                    <h2>STORE</h2>
                    <table class="data"
                           style="border-spacing:30 !important; float:none; margin: 15 30 15px !important; border: 0px solid transparent !important; width: 400px;">
                        <form method="POST">
                            <c:if test="${user.userinfo.company != null}">
                                <tbody class="data-tbody">
                                <tr>
                                    <th colspan="1" class="single">Equipment</th>
                                    <th colspan="1" class="single">Specs</th>
                                    <th colspan="1" class="single">Price</th>
                                    <th colspan="1" class="single">Action</th>
                                    <th colspan="1" class="single">You Have</th>
                                </tr>
                                <tr class="odd">
                                    <td class="width40" id="stamina">Dell PowerEdge T30 Server</td>
                                    <td id="cstamina">3.3 GHZ Intel XEON</td>
                                    <td id="cstamina">$800</td>
                                    <td><input formaction="/buy=1" type="submit" value="buy"></td>
                                    <td id="cstamina">${user.userinfo.company.items.count1}</td>
                                </tr>
                                <tr class="even">
                                    <td class="width40" id="stamina">DELL PowerEdge T140 server</td>
                                    <td id="cstamina">3.5 GHz Intel Xeon E-2124</td>
                                    <td id="cstamina">$1610</td>
                                    <td><input formaction="/buy=2" type="submit" value="buy"></td>
                                    <td id="cstamina">${user.userinfo.company.items.count2}</td>
                                </tr>
                                <tr class="odd">
                                    <td class="width40" id="stamina">Lenovo ThinkSystem ST50 server</td>
                                    <td id="cstamina">3.7 GHz Intel Xeon E-2124G</td>
                                    <td id="cstamina">$2500</td>
                                    <td><input formaction="/buy=3" type="submit" value="buy"></td>
                                    <td id="cstamina">${user.userinfo.company.items.count3}</td>
                                </tr>
                                <tr class="even">
                                    <td class="width40" id="stamina">Fujitsu PRIMERGY TX2550 M4 server</td>
                                    <td id="cstamina">3.4 GHz Intel Xeon Gold 6128 Tower (4U)</td>
                                    <td id="cstamina">$8000</td>
                                    <td><input formaction="/buy=4" type="submit" value="buy"></td>
                                    <td id="cstamina">${user.userinfo.company.items.count4}</td>
                                </tr>
                                <tr class="odd">
                                    <td class="width40" id="stamina">DELL PowerEdge R240 server</td>
                                    <td id="cstamina">4.2 GHz Intel Xeon E-2134</td>
                                    <td id="cstamina">$16000</td>
                                    <td><input formaction="/buy=5" type="submit" value="buy"></td>
                                    <td id="cstamina">${user.userinfo.company.items.count5}</td>
                                </tr>


                                </tbody>
                            </c:if>

                        </form>
                    </table>
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
                            <li id="mnuToolTipSongs"><a href="Hack">Hack</a></li>
                            <li><a href="Jail">Jail</a></li>
                            <li><a href="Company">Company</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear center" style="background-color: transparent;">
            <img src="https://github.com/kubilayckmk/cityofCrime/blob/master/jarcoding.png?raw=true"
                 style="position: relative; left: -20;">
        </div>
        <div id="ppm-footer"></div>
    </div>
    <div id="ppm-bottom-spacer"></div>
    </div>
</form>

</body>

</html>