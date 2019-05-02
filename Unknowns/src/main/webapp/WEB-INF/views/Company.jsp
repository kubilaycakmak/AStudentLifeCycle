<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>
	LifeCycle
</title>
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta name="format-detection" content="telephone=no">
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

					<div class="clear"></div>
					<div id="ctl00_cphLeftColumn_ctl00_divRecentEvents" class="box">
						<h2>Company</h2>
						<ul class="noheader diaryExtraspace">
                            <c:if test="${user.userinfo.company == null}">
       							  	 <form formaction="/createCompany" method="POST">
                                        <input type="text" placeholder="Company Name" name="CompanyName">
                                        <input type="submit" value="Create" formaction="createCompany">
                                    </form>
    							  </c:if>
							<c:if test="${user.userinfo.company != null}">
									${user.userinfo.company.name }
    							  </c:if>
                           
						</ul>
					</div>
					<div id="ctl00_cphLeftColumn_ctl00_pnlHotTrace" class="box">
						<h2>Hiring</h2>
                            <p>You have ${user.userinfo.company.workers.size() } employee.</p>
                                <c:if test="${user.userinfo.company == null}">
    							  </c:if>
								<c:if test="${user.userinfo.company.workers != null}">
                                    <form formaction="/hiring" method="POST">
                                        <input type="submit" value="Hire" formaction="hiring">
                                    </form>
    							  </c:if>
					</div>
					<div class="box">
						<h2>Improvement</h2>
                                <c:if test="${user.userinfo.company.workers.size() == 0}">
    							  </c:if>
								<c:if test="${user.userinfo.company.workers.size() != 0}">
									<c:forEach var = "worker" items="${user.userinfo.company.workers }">
        								<form formaction="${worker.id}" method="POST">
                                        	<p>${worker.lvl } : <input type="submit" value="Improve" formaction="/improve=${worker.id}" ></p>
                                    	</form>
     								 </c:forEach>
                                   
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
								<li id="mnuToolTipSongs"><a href="Hack">Hack</a></li>
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