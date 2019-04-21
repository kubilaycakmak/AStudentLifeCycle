<html>
<head>
  <title>Bank</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="stylesheet" type="text/css" href="b2.css" />
</head>
<body>
    <ul>
        <li><a class="active" href="home.jsp">HOME</a></li>
        <li>
          </form>
        </li>
        <li class="dropdown">
          <a href="javascript:void(0)" class="dropbtn">PROFILE</a>
          <div class="dropdown-content">
            <a href="">STUFF1</a>
            <a href="">STUFF2</a>
            <a href="">STUFF3</a>
            <a href="">ADD MORE IF DESIRED...</a>
          </div>
        </li>
        <li><a href="">CREDITS</a></li>
        <li><a href="">STATS</a></li>
        <li><a href="">HELP</a></li>
        <li><a href="">INVITE</a></li>
        <li><a href="">LOGOUT</a></li>
      </ul>
  <div class="container">
  
  <section>
      <nav>
          <a href="Freelance.jsp"><button class="c">FREELANCE</button></a>
          <a href="House.jsp"><button class="c">HOUSE</button> </a>
          <a href="Bank.jsp"> <button class="c">BANKS</button> </a>
          <a href="FastFood.jsp"> <button class="c">FASTFOOD</button> </a>
          <a href="Computer.jsp"> <button class="c">COMPUTER</button> </a>
          <a href="Store.jsp"><button class="c">STORE</button> </a>
          <a href="Hack.jsp"><button class="c">HACK</button> </a>
          <a href="Hospital.jsp"><button class="c">HOSPITAL</button> </a>
          <a href="Jail.jsp"> <button class="c">JAIL</button> </a>
          <a href="Forex.jsp"> <button class="c">FOREX</button> </a>
        </nav>
    <article>
      <div class="clearfix">
        <h1 style="text-align:left">Bank</h1>
        <p style="color:white"><img src="assets/images/b.jpeg" style="width:170px;height:170px;margin-right:15px;"> Welcome to
          Unknowns Bank!</p>
      </div>
      <p style="font-size:20px; text-align:left">Balance: $</p>
      <form>
        <select>
          <option value="Select">Select the transaction to be performed...</option>
          <option value="Deposit">Deposit Money</option>
          <option value="Withdrawal">Withdraw Money</option>
        </select>
        <input type="number" min="1">
        <input type="submit" value="Confirm">
      </form>
    </article>
    <div class="column">
        <a href="">
          <img class="avatar">
        </a>

        <br><br>

        <ul>
          <p style="color:white">HEALTH :</p>
          <li><progress id="health" value="100" max="100"></progress></li>

        </ul>
        <ul>
          <p style="color:white">STRENGTH :</p>
          <li><progress id="health" value="20" max="100">20</progress></li>
          <!--just to show how the bar works-->

        </ul>
        <ul>
          <p style="color:white">HAPPINESS :</p>
          <li><progress id="health" value="50" max="100"></progress></li>

        </ul>
        <ul>
          <p style="color:white">EXPERIENCE:</p>
          <li><progress id="EXPERIENCE" value="50" max="100"></progress></li>

        </ul>

        <br>
        <p style="color:white;">MONEY</p>
        <h4><p>20$</p></h4>

        <br>
        <div>
          <p>EQUIPMENTS</p>
          <br>
          <p style="color:white">DESKTOP/LAPTOP</p>
          <p style="color:white">CURRENT GAME</p>
        </div>
        <br>
        <div class="shortcuts">
          <div>
            <ul class="shortcut" style="float:left !important; width: 60px;">
              <a href=""><b>
                  <p style="color:rgb(255, 255, 255) ">COURSE CENTER</p>
                </b>
              </a>
            </ul>
          </div>
          <div>
            <ul class="shortcut" style="float:left !important; width: 60px;">
              <a href=""><b>
                  <p style="color:rgb(255, 255, 255) ">COURSE CENTER</p>
                </b>
              </a>
            </ul>
          </div>
          <div>
            <ul class="shortcut" style="float:left !important; width: 60px;">
              <a href=""><b>
                  <p style="color:rgb(255, 255, 255) ">COURSE CENTER</p>
                </b>
              </a>
            </ul>
          </div>
          <div>
            <ul class="shortcut" style="float:left !important; width: 60px;">
              <a href=""><b>
                  <p style="color:rgb(255, 255, 255) ">COURSE CENTER</p>
                </b>
              </a>
            </ul>
          </div>
        </div>
      </div>
    </section>
  </div>
</body>

</html>