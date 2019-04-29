<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>
	LifeCycle
</title>
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta name="format-detection" content="telephone=no">
<%@ include file="main.css"%>
<%@ include file="fqa.txt"%>
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
						<h2 id="help-name"></h2>
						
						<p id="help_content"></p>
					</div>
		
						
					<div class="clear"></div>
						
				</div>
				<div id="ppm-sidemenu" role="navigation">
					<div class="box">
						<div class="menu">
							<h3 class="menu">HELP DESK</h3>
							<ul>
							<style>
								button{
									background-color: transparent;
									border: 0px;
									color: white;
								}
							</style>
							
								<li><button id="fqa">FQA</button></li>
								<li><button id="rules">RULES</button></li>
								<li><button id="why">WHY</button></li>
								<li><button id="privacy">PRIVACY &amp; POLICY</button></li>
								<li><button id="term">TERM &amp; CONDITIONS</button></li>
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

<script type="text/javascript">
			window.addEventListener("load",
					function(){
					
				var script = document.createElement("script");
				script.src = 'fqa.txt';
				script.type='text';
				var content = document.getElementById("help_content");
				var fqa_content = document.createTextNode("fqaa asdad ad");
				var buttonfqa = document.getElementById("fqa").addEventListener("click",
						function(){
							console.log("asd");
							content.appendChild(script);
				});
				var rules = document.getElementById("rules").addEventListener("click",
							function(){
							content.removeChild(fqa_content);
				});
			});
		
		</script>