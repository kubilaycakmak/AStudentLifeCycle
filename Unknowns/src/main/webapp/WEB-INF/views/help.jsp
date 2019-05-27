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
                
                	<c:if test="${user.userinfo.id == null}">
                		<a href="index">Go Login/Register Page</a>
                	</c:if>
                	<c:if test="${user.userinfo.id != null}">
                	<form method="post">
                		<li><input class="input-nav" formaction="/home" type="submit"
                               value="Welcome" name="welcome"></li>
                    <li><input class="input-nav" formaction="/user" type="submit"
                               value="Character" name="character"></li>
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
                                            <h4 class="modal-title">HELP ME</h4>
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
                	</c:if>
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
                    <h2 id="help-name"></h2>
                    <p id="fqacontent" style="display:none;">
                        *** Getting started on Unknowns.<br>
                        1- What kind of game is Unknowns ?<br>
                        Its a Strategic game that controls person life-cycle<br>
                        2- What are some of the features that make Unknowns special?<br>
                        * You can manage Students life cycle.<br>
                        * You can choose your Students freelance works to earn money and experience.<br>
                        * Students health, happines and energy bar makes the game exciting.<br>
                        * The chalenging desicion mechanism .<br>
                        * with the Character improvemnet you can specialize your character.<br>
                        * You can choose between different student departments.<br>
                        * Player ranking system.<br>
                        3- What inspired the design of Unknowns<br>
                        4- Will Unknowns have a multiplayer mode?<br>
                        * Not in this version. Due to our limited resources as well as design choices favoring a single player experience, it would not have been possible to make a traditional multiplayer mode without putting severe limits on many features such as advanced tactical combat and ancient powerful alien races.<br>
                        * We believe most players will really appreciate the depth of the single-player game experience and it will more than make up for the lack of a multiplayer mode in this version of Horizon.<br>
                        5- What are the hardware requirements?<br>
                        A PC system purchased in the past 5 years capable of adequately running win98/2000/XP.<br>
                        Technically speaking a video card supporting the latest Microsoft DirectX, at least 256 megs of RAM and a Pentium/AMD 1ghz+ for acceptable gameplay speed. (Lower system specs may work albeit combat speed will suffer and is not recommended).<br>
                        6- known issues<br>
                        7- Troubleshoot acaunt issues<br>
                        8- Sign up and manage your accaunt :<br>
                        + Change email adress<br>
                        Your email address on Unknowns is your Account email address (also known as your Unknowns username). <br>
                        + Change language settings<br>
                        You have the option to select your language and location on your computer, Language settings change the text that appears.<br>
                        + change password <br>
                        + Forget your password ?<br>
                        Reset Password<br>
                        9-Creating accaunt <br>
                        Enter your own information and enjoy the game!<br>
                        10- Manage notifications <br>
                        notifications let you know when there are new updates. Well send you notifications for the gameplay. You can adjust your notifications or turn them off completely.<br>
                        11- Ban information :<br>
                        + Square Punishment<br>
                        The punishment is given because of punishment, bad behavior or insulting someone.<br>
                        + Periodic Ban<br>
                        Periodic bans prevent you from entering the game. When youre full of time, the ban is lifted up on your own.<br>
                        + Permanent Ban <br>
                        * Persistent bans never open and are used for very serious rule violations. <br>
                        * Repeated rule violations result in serious and prolonged bans.<br>
                        12- Why have i been banned ?<br>
                        In Complaints department.<br>
                        13- I have been banned. Can I register new account and continue game?<br>
                        No, since you cant register. Youll need to be back again. Every time we find an account.<br>
                        14- Where can i find the rules ?<br>
                        15- One friend told me that he was abused. Can this happen?<br>
                        Crew members.<br>
                        16- Someone promised to pay me some money. Can you help me?<br>
                        No, we cant help. The Unknowns doesnt take responsibility<br>
                        17- My friend has been banned, I want to know why?<br>
                        We dont discuss bans with third parties.<br>
                        18- Someone told me that he is using Proxy websites / IPs to play<br>
                        No, it is not allowed to use PROXY.<br>
                        19- What do you think of a trade donation?<br>
                        First BUT it doesnt determinate our decisions. That Dont be scared, if you follow the rules.<br>
                        20- What are the penalties for breaking the rules?<br>
                        It depends on violated rule. For minor crimes like insults or spam (more if relapse). If youre looking for a game, youll be able to play banquet games with a banquet! For These are just sample penalties. Ill be back again! Then you can be banned permanently.<br>
                        21- Does it cost anything to sign up?<br>
                        No, signing up to Gaming Frog is completely free!<br>
                        22- Is Gaming Frog Legal?
                        Gaming Frog is legal, given that the competitions that take place in our platform are considered games of skill. Skill-based gaming has a well-established legal, social and commercial history. Today, games of skill are available on most major media sites like AOL, MSN, Yahoo and are complemented by an emerging electronic sports (eSports) industry that lets professional gamers compete in popular video games with real money at stake.<br>
                        23- How do I play ?<br>
                        Please follow the tutorial.<br>
                        None. We believe consumers should be able to make backup copies freely if they so wish. We also think most people will legally purchase games they want to play and support.<br>
                        25-Sounds like another Strategic game, is it?<br>
                        Its a decision based strategic game, come and try it for yourself and let us know, what do you think about it.<br>
                        26- Can i play with my ftiends ?<br>
                        Its solo based game.<br>
                        27- Who is working on this game ?<br>
                        The game is made an published by Charlie group, an independent development group based in Istanbul,Turkey.<br>
                        28- Which Platforms will Unknowns be available for ?<br>
                        The Unknowns is available for PC with windows OS.<br>
                        29- What languages are supported during the game ?<br>
                        Currently, you can play Unknowns in English.<br>
                        30- contact us.<br>
                    </p>
                    <p id="rulescontent" style="display:none;">
                        *** Rules<br>

                        1. You are the only one responsible for your own account. Under no circumstances will the account be reinstated or rewound unless the damage is provided by the Team Members. Credits can be returned if there is sufficient evidence of abuse. <br>

                        2. It is forbidden to have more than one account or to play with more than one account. You can play more than one account at the same IP address, but these accounts are not allowed to transfer statistics between each other or through other accounts. This means you can only enter one account from a computer. It is forbidden to transfer statistics between trusted accounts. If you have been penalized throughout the season, you should wait, if you open a new account, you will be fined.<br>

                        3. You are not allowed to log in to another player's account or to share accounts in any way. This also means that you cannot and do not exchange accounts. Only authorized account use is allowed. <br>

                        4. It is forbidden to abuse or steal another player's account. It is forbidden to try this situation. <br>

                        5. All actions taken on your account should be made by you, at the beginning of your computer. Navigating between pages should be done by clicking on the mouse. This also means that editing the URL in the browser is prohibited. It is forbidden to use browser plugins that affect the game's functions. All routine movements, devices and software that affect the normal course of the game are prohibited.<br>

                        6. The game must be notified when errors are found and a game penalty will result in a penalty. <br>

                        7. Any form of spam or advertising of a material is prohibited. <br>

                        8. It is forbidden to disturb people, to be a Nazi advocate, to pornographic, racist, or to share contents / links to injure persons or groups. Religious and political statements are prohibited. The cases that violate this rule shall be examined separately (without a predetermined form of review) and the right of the Team Members to decide on penalties is reserved. Note: Please do not report slight insults.<br>

                        9. Payments not registered in our system will not be compensated. The Crims does not take responsibility for the loss of money in such cases. These problems should be reported to the payment provider or operators. The Crims does not accept any responsibility for loans received from vendors not listed on the credit purchase page. <br>

                        10. It is forbidden to sell or trade accounts or statistics. <br>

                        11. It is forbidden to mislead team members or to act as a Team member. <br>

                        12. Any conduct that violates the user agreement or game license is prohibited.<br>

                        13. Violating or attempting to infringe any one or more of these rules will result in a penalty set by Team Members. Using another account in violation of these rules will result in a penalty and each case will be examined individually. <br>

                        14. Any criminal offense violating local law shall be notified to the competent authorities. <br>

                        15. It is forbidden to use services that mask or change your location. <br>

                        16. The account holder is the person whose e-mail address is registered to the account. Support has the right to request the e-mail address as verification.<br>

                        17. It is a violation of the rules to share passwords and will be punished as such. Exception: multi-player accounts. These are only permitted if the players of the account don’t possess or play any other account in the same game world. Accounts that are played from the same PC are not allowed to have the same password.<br>

                        18. It is against the rules to attempt to gain access to another account unrightfully. Any login that is not carried out by the account holder will be seen as unrightful. Violations could lead to expulsion from the game. The team will never ask you for your password!<br>

                        19.  An account must only be played for its own success and is not allowed to exist for the exclusive benefit of another account. Accounts that are exclusively used to provide other accounts an advantage (‘pushing’) are forbidden.<br>

                        20.  Insults, vilification or other questionable comments about other players, in any form or in any place in the game, will not be tolerated and will be punished.<br>

                        21.  We do not allow any links in chat, profile or game forums.<br>

                        22. Adverts of any kind, spam and chain mail are not allowed.<br>

                        23. It is forbidden to force a player to delete, give or share their account, or to demand that they share their password or violate a rule.<br>

                        24. The exploitation of bugs in the game is forbidden and will be punished. The same applies to the use of scripts, bots or other similar programs. The game must only be played with conventional browsers, rather than browsers modified for Rail Nation. Graphic packs are exempt from this.<br>

                        25. The rules may change over time.<br>
                    </p>
                    <p id="termscontent" style="display:none;">
                        *** Terms and Conditions<br>

                        * BEFORE USING THIS SITE, PLEASE GO THROUGH THE USE OF CAREFULLY TERMS AND CONDITIONS.<br>

                        * Our visitors may use this site free. And, the users using this site agree to comply and bound by the below mentioned terms of use. If you do not agree to the given terms and conditions after reviewing it thoroughly, you are requested not to use the site:<br>

                        1- Acceptance of Agreement: <br>
                        The terms and conditions featured in this Terms and Conditions of use Agreement (Agreement) related to our site (Unknowns) are agreed by you. This Agreement represents the complete and only agreement between you and us, and supersedes all prior or contemporaneous agreements, representations, warranties and understandings related to the Site, free product samples, the content, or freebie offers or services provided by <br>
                        or listed on the Site, and the subject matter of this Agreement. We can amend the Agreement any time and at any frequency without informing or specific notice to you. The latest Agreement will be posted on the site that can be reviewed by you prior to using the site. This Agreement may be amended by us at any time and at any frequency without specific notice to you. The latest Agreement will be posted on the Site, <br>
                        and you should review this Agreement prior to using the Site.<br>

                        2- Copyright:<br>
                        The organization, content, design, graphics, and other materials related to this Site are protected under applicable copyrights and other proprietary laws, including but not limited to intellectual property laws. Without our prior written permission, the copying, reproduction, use, modification or publication of full or part of any such matters or any part of the Site by you is strictly prohibited.<br>

                        3- Deleting and Modification:<br>
                        We reserve the right in our sole discretion, to edit or delete any documents, information or other content appearing on the Site, including this Agreement without any notice requirement or obligation to you.<br>

                        4- Indentification:<br>
                        You agree to indemnify, defend and hold us, our officers, our share holders, our partners, attorneys and employees harmless from any and all liability, loss, damages, claim and expense, including reasonable attorney’s fees, related to your violation of this Agreement or use of the Site.<br>
                        5- Disclaimer: <br>
                        The content, services, free product samples and freebie offers from or listed through the site are provided as available and all warranties,express or implied are disclaimed, inculduing but not limited to the disclaimer of any implied warranties of title non-infringment, merchantabilty, quality and fitness for a particular<br>
                        purpose, with respect to this site and any website which it is linked. The information and services may contain bugs, errors, problems or other limitations. we have no liability what so ever for your use of any information or service. In particular, but not as a limitation, we are not liable for any indirect,Incidental or Consequental damages (including damages for loss of business, loss of profits, loss of money),<br>
                        whether based on breach of contract, breach of warranty, product liability of otherwise, even if advised of the possibility of such damages. The negation of damages set forth above are fundamental elements of the basis of the bargain between us and you the user. This site and the information would not be provided without such limitations. No advice of information, wether oral or written, obtained by you from us through the site <br>
                        shall create any warranty representation or guarantee not expressly stated in this agreement. the information and all other materials on the site are provided for general information purposes only and do not constitute professional advice. It is your responsiblity to evaluate the accuracy and completeness of all information available on this site or any website with which it is linked.<br>

                        6- Limits:<br>
                        We disclaim all responsibility or liability for any damages caused by viruses contained within the electronic file containing the form or document.. We disclaim any form of the liability to you for any incidental, special or consequential damages of any kind that may result from use of or inability to use the site.<br>

                        7- Third-Party Website:<br>
                        All rules, terms and conditions, other policies (including privacy policies) and operating procedures of third-party linked websites will apply to you while on such websites. For the content, accuracy or opinions expressed in such Websites, we are not responsible, and we have also not investigated, monitored or checked for accuracy or completeness of such websites. Any linked Website inclusion on our Site does not imply endorsement or approval of the linked Website by us. This Site and the third-party linked websites are independent entities and neither party has authority to make any representations or commitments on behalf of the other. You are acting at your own risk if you decide to leave our Site and access these third-party linked sites.<br>

                        8- Third-Party Products and Services:<br>
                        Our site advertise third-party linked websites from which you may purchase or otherwise obtain certain freebie offerings, sample goods, or free trial services. It must be fully understood that we do not operate or control the free offerings, products, or services offered by third-party linked websites. The responsibility solely lies with the third-party linked websites for all aspects of order processing, billing fulfillment, and customer services. For any transactions entered into between you and third-party linked websites we are not a party to it. You agree that use of such third-party linked websites is at your sole risk and is without warranties of any kind by us, expressed, implied or otherwise. Under no circumstances are we liable for any damages arising from the transactions between you and third-party linked websites or for any information appearing on third-party linked websites or any other site linked to or from our site.<br>

                        9- Submissions:<br>
                        All ideas, notes, suggestions, concepts and other information send by you to us (collectively, “Submissions”) shall be deemed and shall remain our sole property and shall not be subject to any obligation of confidence on our part. Without limiting the foregoing, we shall be deemed to own all known and hereafter existing rights of every kind and nature regarding the Submissions and shall be entitled to unrestricted use of the Submissions for any purpose, without compensation to the provider of the Submissions.<br>

                        10- General:<br>
                        You agree that all actions or proceedings arising directly or indirectly out of this agreement, or your use of the site or any sample products, freebie offers or services obtained by you through such use, shall be litigated in the circuit court of Los Angeles County, California or the United States District Court for the Central District of California. you are expressly submitting and consenting in advance to such jurisdiction in any action or proceeding in any of such courts, and are waiving any claim that Los Angeles, California or the central district of California is an inconvenient forum or an improper forum based on lack of venue. This site is controlled by Perfect Insight, Inc. in the State of California, USA. As such, the laws of California will govern the terms and conditions contained in this Agreement and elsewhere throughout the Site, without giving effect to any principles of conflicts of laws.<br>

                    </p>
                    <p id="whycontent" style="display:none;">
                        **** Why Play Strategy Game<br>

                        - Playing strategy games can be a fun experience. Strategy games can be enjoyable at a number of different psychological levels.  It can be an enjoyable individual experience.  It can be an exhilarating group experience.  It can be an activity that you can enjoy.<br>

                        - Who doesn’t like to beat an opponent in a game situation by out-smarting them?  Isn’t it gratifying when your planned strategy works to perfection and produces the winning play?  Working together with partners to reach the strategic game goal can be a rewarding social interaction.<br>

                        - If you want to learn something about your friends or your future partner, try playing a strategy game with them.  Strategy games present interesting insights to an individual’s thought processes and competitive nature.  Sometimes these insights can be revealing.<br>

                        - Playing strategy games has been a part of human nature for a long time.  They have been around so long that perhaps strategy games help humankind by allowing competition and the resolution of a conflict in an environment that does not end in the tragedy.<br>

                    </p>
                    <p id="privacycontent" style="display:none;">
                        *** Privacy Policy<br>

                        - We recognize the importance of our visitor’s privacy and we aim to preserve the Privacy by all means. The information furnished herewith will inform you on the types of personal information we receive and collect when you use (operate) and visit Unknowns, and how we safeguard your information. You can be assured that your personal information is never leaked or sold to the third parties and they are well protected by us.<br>

                        - Log Files<br>
                        As with most other websites, we also collect and use the data contained in log files. The information in the log files include your IP (internet protocol) address, your ISP (internet service provider, such as AOL or Shaw Cable), the browser used by you to visit our site (such as Internet Explorer or Firefox), your site visit time and the pages browsed by you throughout our site.<br>

                        - Cookies and Web Beacons<br>
                        We do use cookies to store information, such as your personal preferences when you visit our site. This could include showing a popup only once during your visit, or the ability to login to some of our key features, such as forums.<br>

                        - We also visualize third party advertisements on Unknowns to support our site. Few of these advertisers may use technology such as cookies and web beacons when they advertise on our site that also send these advertisers (such as Google through the Google AdSense program) information including your IP address, your ISP , the browser used by you to visit our site, and in some cases, whether you have installed Flash. Such application is generally applied for geotargeting purposes.<br>

                        - DoubleClick DART cookies <br>
                        We also may use DART cookies for ad serving through Google’s DoubleClick, The DART cookies may also be used by us for ad serving through Google’s DoubleClick, which places a cookie on your computer when you are browsing the web and visit a site using DoubleClick advertising (including some Google AdSense advertisements). The cookie is used to serve your specific ads and your interests (“interest based targeting”). The ads served are to be targeted on the basis of your previous browsing history, DART uses “non personally identifiable information”, which does NOT track your personal information, such as your name, email address, physical address, telephone number, social security numbers, bank account numbers or credit card numbers. You have the option to opt-out of this ad serving on all sites.<br>

                        - You can choose to disable or selectively turn off our cookies or third-party cookies in your browser settings, or by managing preferences in programs such as Norton Internet Security. However, it can affect your ability to interact with our site as well as other websites and it may include the inability to login to services or programs, such as logging into forums or accounts.<br>

                        - Deleting cookies does not mean you are permanently opted out of any advertising program. Unless, you have settings that disallow cookies, the next time you visit a site running the advertisements, a new cookie will be added.<br>

                    </p>
                </div>
                <div class="clear"></div>

            </div>
            <div id="ppm-sidemenu" role="navigation">
                <div class="box">
                    <div class="menu">
                        <h3 class="menu">HELP DESK</h3>
                        <ul>
                            <style>
                                button {
                                    background-color: transparent;
                                    border: 0px;
                                    color: white;
                                }
                            </style>
                            <li>
                                <button id="fqa">FQA</button>
                            </li>
                            <li>
                                <button id="rules">RULES</button>
                            </li>
                            <li>
                                <button id="why">WHY</button>
                            </li>
                            <li>
                                <button id="privacy">PRIVACY &amp; POLICY</button>
                            </li>
                            <li>
                                <button id="term">TERM &amp; CONDITIONS</button>
                            </li>
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
        function () {
            var rulescontent = document.getElementById("rulescontent");
            var termscontent = document.getElementById("termscontent");
            var whycontent = document.getElementById("whycontent");
            var privacycontent = document.getElementById("privacycontent");
            var fqacontent = document.getElementById("fqacontent");

            var fqa = document.getElementById("fqa").addEventListener("click",
                function () {
                    fqacontent.style.display = "block";
                    rulescontent.style.display = "none";
                    termscontent.style.display = "none";
                    whycontent.style.display = "none";
                    privacycontent.style.display = "none";
                });
            var rules = document.getElementById("rules").addEventListener("click",
                function () {
                    fqacontent.style.display = "none";
                    rulescontent.style.display = "block";
                    termscontent.style.display = "none";
                    whycontent.style.display = "none";
                    privacycontent.style.display = "none";
                });
            var term = document.getElementById("term").addEventListener("click",
                function () {
                    fqacontent.style.display = "none";
                    rulescontent.style.display = "none";
                    termscontent.style.display = "block";
                    whycontent.style.display = "none";
                    privacycontent.style.display = "none";
                });
            var why = document.getElementById("why").addEventListener("click",
                function () {
                    fqacontent.style.display = "none";
                    rulescontent.style.display = "none";
                    termscontent.style.display = "none";
                    whycontent.style.display = "block";
                    privacycontent.style.display = "none";
                });

            var privacy = document.getElementById("privacy").addEventListener("click",
                function () {

                    fqacontent.style.display = "none";
                    rulescontent.style.display = "none";
                    termscontent.style.display = "none";
                    whycontent.style.display = "none";
                    privacycontent.style.display = "block";

                });
        });

</script>