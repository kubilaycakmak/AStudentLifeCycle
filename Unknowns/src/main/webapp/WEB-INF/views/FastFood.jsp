<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>
	LifeCycle
</title>
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" type="text/css" />
<%@ include file="main.css"%>
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
											<td class="stat">${user.userinfo.stamina}</td>
											<td>Money:</td>
											<td class="stat">$ ${user.userinfo.money}</td>
										</tr>
										<tr>
											<td>Experience:</td>
											<td class="stat">${user.userinfo.xp}</td>
											<td>Equipments:</td>
											<td class="stat">DESKTOP</td>
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
				<div>
					<h2>
						<%
							if (null != session.getAttribute("job")) {
						%>
						<h3 style="font-size: 14px; line-height: 0px;"><%=session.getAttribute("job")%></h3>
						<%
							session.removeAttribute("job");
						%>
						<%
							}
						%>
					</h2>
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
					<p id="timer" style="display: none">${time}</p>
					<div><span id="time1" style="color: white;"></span></div>

						<script>
							window.addEventListener("load",function(){
                                var choice = document.getElementById("choice");
								var timer = parseInt(document.getElementById("timer").innerHTML);
                                var freeElement = document.querySelectorAll("td > p");
								if(timer > 0){
									document.getElementById("submitButton").disabled = true;
									document.getElementById("submitButton").style.color = "red";
								}
								else if(timer == 0){
									document.getElementById("submitButton").disabled = false;
									document.getElementById("submitButton").style.color = "orange";
								}

								choice.addEventListener("change", function () {
									var freeOption = this.options[this.selectedIndex].value;
									if(freeOption == "info"){
										document.getElementById("submitButton").disabled = true;
										document.getElementById("submitButton").style.color = "grey";
									}
									else if (freeOption == "m1") {
										freeElement[0].textContent = "-  10";
										freeElement[1].textContent = "+ $10";
									} else if (freeOption == "m2") {
										freeElement[0].textContent = "-  15";
										freeElement[1].textContent = "+ $20";
									} else if (freeOption == "m3") {
										freeElement[0].textContent = "-  20";
										freeElement[1].textContent = "+ $30";
									} else if (freeOption == "m4") {
										freeElement[0].textContent = "-  20";
										freeElement[1].textContent = "+ $30";
									} else if (freeOption == "m5") {
										freeElement[0].textContent = "-  20";
										freeElement[1].textContent = "+ $30";
									}
								});

								function startTimer(duration, display) {
									var timer = duration, number;
									setInterval(function () {
										number = parseInt(timer, 10);
										number = number < 10 ? "0" + number : number;
										display.textContent =  number;

										if (--timer < 0) {
											timer = duration;
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
                        <tr class="odd">
                            <td id="money">Money:</td>
                            <td><p class="required">-</p></td>
                        </tr>
                        <tr class="even">
                            <td id="time">Time:</td>
                            <td><p class="required">-DEMO-</p></td>
                        </tr>
                        <tr>
                            <td>Job Status:</td>

                            <%if (null != session.getAttribute("job")) {%>
                            <td><p class="required"><%=session.getAttribute("job")%></p></td>
                            <%session.removeAttribute("job");%>
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