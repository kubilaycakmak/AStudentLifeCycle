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
						<div>${time}</div>
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
								<li><a href="Hospital">Hospital</a></li>
								<li><a href="Jail">Jail</a></li>
								<li><a href="Forex">Forex</a></li>
								<li><a href="Course">Course</a></li>
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
						<select name="fastfoodChoose"
							id="ctl00_cphLeftColumn_ctl00_ddlLocaleType"
							class="maxwidth125px round">
							<option value="m1">Menu1</option>
							<option value="m2">Menu2</option>
							<option value="m3">Menu3</option>
							<option value="m4">Menu4</option>
							<option value="m5">Menu5</option>
						</select><br>
						<p id="timer">${time}</p>
						
						<script>
							window.addEventListener("load",function(){
								var timer = parseInt(document.getElementById("timer").innerHTML);
								console.log(timer);
								if(timer > 0){
									document.getElementById("submitButton").disabled = true;
									document.getElementById("submitButton").style.color = "red";
									console.log(timer);
								}
								else if(timer == 0){
									document.getElementById("submitButton").disabled = false;
									document.getElementById("submitButton").style.color = "orange";
								}
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
							<th colspan="2" class="single">Shop Lift</th>
						</tr>
						<tr class="odd">
							<td class="width40">Stamina required:</td>
							<td><a id="j1"
								href="/World/Popmundo.aspx/Locale/26591">Helsinki-Vantaan
									lentoasema</a></td>
						</tr>
						<tr class="even">
							<td>Spirit:</td>
							<td><a id="j2"
								href="/World/Popmundo.aspx/Locale/80029">Marian sairaala</a></td>
						</tr>
						<tr class="odd">
							<td>Robery power:</td>
							<td><a id="j3"
								href="/World/Popmundo.aspx/Locale/26594">Helsingin
									kaupungintalo</a></td>
						</tr>
						<tr class="even">
							<td>Reward:</td>
							<td><a id="j4"
								href="/World/Popmundo.aspx/Locale/198201">Oikeustalo</a></td>
						</tr>
						<tr class="odd">
							<td>Success probability:</td>
							<td><a id="j5"
								href="/World/Popmundo.aspx/Locale/2893834">Maantie
									Maailmalle</a></td>
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