<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Resume</title>
  <%@ include file="blue.css"%>
  <%@ include file="print.css"%>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
	<%@ include file="jquery-1.4.2.min.js"%>
    <%@ include file="jquery.tipsy.js"%>
    <%@ include file="cufon.yui.js"%>
    <%@ include file="scrollTo.js"%>
    <%@ include file="myriad.js"%>
    <%@ include file="jquery.colorbox.js"%>
    <%@ include file="custom.js"%>
    
  <script type="text/javascript">
    Cufon.replace('h1,h2');
  </script>
</head>

<body>
    <ul class="navbar-top">
        <li><a class="active" href="home">HOME</a></li>
      </ul>
  <!-- Begin Wrapper -->
  <div id="wrapper">
    <div class="wrapper-top"></div>
    <div class="wrapper-mid">
      <!-- Begin Paper -->
      <div id="paper">
        <div class="paper-top"></div>
        
        <div id="paper-mid">
          <div class="entry">
            <!-- Begin Image -->
            <img class="portrait" src="images/image.jpg" alt="John Smith" />
            <!-- End Image -->
            <!-- Begin Personal Information -->
            
            <div class="self">
              <h1 class="name" contenteditable="false">adasd<br/>
                <span>Interactive Designer</span></h1>
              <ul>
                <li class="ad" id="ad" contenteditable="false">111 Lorem Street, 34785, Ipsum City</li>
                <li class="mail" id="mail">johnsmith@business.com</li>
                <li class="tel" id="tel">+11 444 555 22 33</li>
                <li class="web" id="web">www.businessweb.com</li>
              </ul>
            </div>
            <!-- End Personal Information -->
            <!-- Begin Social -->
            <div class="social">
              <ul>
                <li><a class='north' id="editable" href="#" title="Edit"><img src="images/icn-web.png" height="24" width="24"
                      alt="Download the pdf version" /></a></li>
                      <li><a class='north' id="save" href="#" title="Save"><img src="images/save.png" height="24" width="24"
                        alt="Download the pdf version" /></a></li>
                <li><a class='north' href="javascript:window.print()" title="Print"><img src="images/icn-print.jpg"
                      alt="" /></a></li>
              </ul>
            </div>
            <!-- End Social -->
          </div>
          <!-- Begin 1st Row -->
          <div class="entry">
            <h2>OBJECTIVE</h2>
            <p id="objectInput">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim viverra nibh sed varius. Proin
              bibendum nunc in sem ultrices posuere. Aliquam ut aliquam lacus.</p>
          </div>
          <!-- End 1st Row -->
          <!-- Begin 2nd Row -->
          <div class="entry">
            <h2>EDUTION</h2>
            <div class="content">
              <h3 id="eduDate">DEMO VERSION</h3>
              <p id="eduContent">DEMO VERSION<br />
                <em id="eduDep">DEMO VERSION</em></p>
            </div>
            <div class="content">
              <h3>DEMO VERSION</h3>
              <p>DEMO VERSION<br />
                <em>DEMO VERSION</em></p>
            </div>
          </div>
          <!-- End 2nd Row -->
          <!-- Begin 3rd Row -->
          <div class="entry">
            <h2>EXPERIENCE</h2>
            <div class="content">
              <h3>DEMO VERSION</h3>
              <p>DEMO VERSION<br />
                <em>DEMO VERSION</em></p>
            </div>
            <div class="content">
              <h3>DEMO VERSION</h3>
              <p>DEMO VERSION<br />
                <em>DEMO VERSION</em></p>
            </div>
          </div>
          <!-- End 3rd Row -->
          <!-- Begin 4th Row -->
          <div class="entry">
            <h2>SKILLS</h2>
            <div class="content">
              <h3>Software Knowledge</h3>
              <ul id="skill1" class="skills">
                <li>Photoshop</li>
                <li>Illustrator</li>
                <li>InDesign</li>
                <li>Flash</li>
                <li>Fireworks</li>
                <li>Dreamweaver</li>
                <li>After Effects</li>
                <li>Cinema 4D</li>
                <li>Maya</li>
              </ul>
            </div>
            <div class="content">
              <h3>Languages</h3>
              <ul id="skill2" class="skills">
                <li>CSS/XHTML</li>
                <li>PHP</li>
                <li>JavaScript</li>
                <li>Ruby on Rails</li>
                <li>ActionScript</li>
                <li>C++</li>
              </ul>
            </div>
          </div>
          <!-- End 4th Row -->
          <!-- Begin 5th Row -->
          <div class="entry">
            
          </div>
          <!-- Begin 5th Row -->
        </div>
        <div class="clear"></div>
        <div class="paper-bottom"></div>
      </div>
      <!-- End Paper -->
    </div>
    <div class="wrapper-bottom"></div>
  </div>
  <div id="message"><a href="#top" id="top-link">Go to Top</a></div>
  <!-- End Wrapper -->
</body>

</html>