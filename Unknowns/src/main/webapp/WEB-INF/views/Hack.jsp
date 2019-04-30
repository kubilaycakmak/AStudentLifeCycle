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
								is a <c:if test="${user.userinfo.type == 1}">
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
					<div id="hack">
						<img
							src="https://techcrunch.com/wp-content/uploads/2015/01/hack.jpg?w=1390&crop=1"
							width="212px" height="140px">
						<p>Rumor says that the perfect crime is to stab someone with
							an icice. Self-destructing evidence... Make it fast and clean
							then maybe you will get away with some fresh dineros. Some crimes
							are too hard to handle by your own, to succeed you will need help
							from your crew in the mob. You will discover more and harder
							robberies after completing new levels!</p>
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
					<h2>Freelance Jobs</h2>
					<p>
					<form action="freelance" method="POST">
						<select name="freelanceChoose"
							id="choice"
							class="maxwidth125px round">
							<option value="1">Attack Wifi</option>
							<option value="2">Attack Bank Accounts</option>
							<option value="3">Attack Police Department</option>
							<option value="4">DEMO</option>
							<option value="5">DEMO</option>
						</select><br>
						<p id="timer">${time}</p>
						<script>
						
						function getSelectedOption(choise){
							var opt;
							for(var i=0,len = choice.options.length; i<len;i++){
								opt=choice.options[i];
								if(opt.selected === true){
									break;
								}
							}
							return opt;
						}
						var opt = getSelectedOption(choice);
						
						console.log(opt.value);
							window.addEventListener("load",function(){
								var choice = document.getElementById("choice");
								
								var stamina = document.getElementById("stamina");
								var timer = parseInt(document.getElementById("timer").innerHTML);
								console.log(timer);
								if(timer > 0){
									document.getElementById("submitButton").disabled = true;
									document.getElementById("submitButton").style.color = "grey";
									console.log(timer);
								}
								else if(timer == 0){
									document.getElementById("submitButton").disabled = false;
									document.getElementById("submitButton").style.color = "green";
								}
							});
						</script>
						<p class="actionbuttons">
							<input type="submit" name="ctl00$cphLeftColumn$ctl00$btnFind"
								value="work on it!" id="submitButton">
						</p>
					</form>
					</p>

				</div>
				<table class="data">
					<tbody class="data-tbody">
						<tr>
							<th colspan="2" class="single">HACK Info</th>
						</tr>
						<tr class="odd">
							<td class="width40" id="stamina">Stamina required:</td>
							<td id="cstamina"></td>
						</tr>
						<tr class="even">
							<td id="xp">Experience:</td>
							<td id="cxp"></td>
						</tr>
						<tr class="odd">
							<td id="money">Money:</td>
							<td id="cmoney"></td>
						</tr>
						<tr class="even">
							<td id="time">Time:</td>
							<td id="ctime"></td>
						</tr>
						<tr class="odd">
							<td>Success or Failed:</td>
							<td></td>
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