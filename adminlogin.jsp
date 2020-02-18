<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
    <!--@author: Parthy-->
<title>Key-Aggregate</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script>
    function check(){
        var a = document.f.user.value;
        var b = document.f.pass.value;
        var c = "admin";
        if(a==0){
            alert('Please enter Userid..!');
            document.getElementById("user").focus();
            return false;
        }
        if(b==0){
            alert('Please enter Password..!');
            document.getElementById("pass").focus();
            return false;
        }
        if(a==c && b==c){
            window.location("adminpage.jsp");
        }
        else{
            alert('Error found..!');
            return false;
        }
       
    }
    
</script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.jsp"><span>Home Page</span></a></li>
          <li><a href="adminlogin.jsp"><span>Admin</span></a></li>
          <li><a href="userlogin.jsp"><span>User Login</span></a></li>
          <li><a href="regpage.jsp"><span>New User</span></a></li>
       
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.jsp">Key-Aggregate Cryptosystem for Scalable Data Sharing in Cloud Storage</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
          <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="450" alt="" /><span> </span></a> <a href="#"><img src="images/slide2.jpeg" width="960" height="450" alt="" /><span></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="250" alt="" /><span></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <div class="clr"></div>
          <div class="img"><img src="images/img1.jpg" width="178" height="185" alt="" class="fl" /></div>
          <div class="post_content">
             <form name="f" action="adminpage.jsp" method="get" onsubmit="return check()">
                  
                  <h2>Admin Login</h2><br></br>
                  
                  <strong>Username</strong><br>
                  <input type="text" name="user" id="user" placeholder="Enter userid" style="width: 180px; height: 30px; background-color: #b9c3d0"><br>
                                       
                  <strong>Password</strong><br>
                  <input type="password" name="pass" id="pass" placeholder="Enter password" style="width: 180px; height: 30px; background-color: #b9c3d0"><br><br>
                          <input type="submit" value="Login" style="background-color: greenyellow; width: 100px;height: 30px;">
                              <input type="reset" value="Cancel" style="background-color: red; width: 80px;height: 30px;">
                                                    </form>
           
            <p class="spec"><a href="#" class="rm">Read more</a> <a href="#" class="com">Comments <span>11</span></a></p>
          </div>
          <div class="clr"></div>
        </div>
     
        <p class="pages"><small>Page 1 of 2</small> <span>1</span> <a href="#">2</a> <a href="#">&raquo;</a></p>
      </div>
      <div class="sidebar">
        
        <div class="clr"></div>
    
   
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
   
    
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">2014</a>.</p>
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<</body>
</html>
