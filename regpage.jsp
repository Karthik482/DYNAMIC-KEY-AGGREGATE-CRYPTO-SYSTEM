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
<style>
    input{
        width: 200px;
        height: 20px;
        
       
    }
</style>
<script>
    function validation(){
        var uname=document.ureg.username.value;
        var pass=document.ureg.password.value;
        var cpass=document.ureg.cpassword.value;
        var mail=document.ureg.mail.value;
        var name=document.ureg.name.value;
        var ph=document.ureg.mobile.value;
        
        if(name==0){
            alert("Enter name");
            document.ureg.name.focus();
            return false;
        }
        if(uname==0){
            alert("Enter username");
            document.ureg.username.focus();
            return false;
        }
        if(pass==0){
            alert("Enter password");
            document.ureg.password.focus();
            return false;
        }
        if(cpass!=pass){
            alert("Incorrect password");
            document.ureg.cpassword.focus();
            return false;
        }
        
        
        if(mail==0){
            alert("Enter mailid");
            document.ureg.mail.focus();
            return false;
        }
        if(ph==0){
            alert("Enter your mobile no");
            document.ureg.mobile.focus();
            return false;
        }
         if(isNaN(ph)){
                 alert("Invalid phoneno");
                 document.ureg.mobile.focus();
                 return  false;
            }
            if(document.ureg.like.value==0){
            alert("Enter your likes");
            document.ureg.like.focus();
            return false;
        }
    }
</script>
</head>
<body>
        <%
if(request.getParameter("msg")!=null){
out.print("<script>alert('Error Found..!')</script>");
}    
%>
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
          <form action="registration.jsp" name="ureg" method="get" onsubmit="return validation()"> 
<!--                  USERNAME:<br>-->

<h2>User Registration</h2>
<input type="text" name="name" placeholder="Enter your name" ><br></br>
<input type="text" name="username" placeholder="Enter username"><br></br>
<!--                  PASSWORD:<br>-->
<input type="password" name="password" placeholder="Enter password"><br></br>
<input type="password" name="cpassword" placeholder="confirm your password"><br></br>
<input type="email" name="mail" placeholder="Enter your email"><br></br>
<input type="text" name="mobile" placeholder="Enter your mobile no" maxlength="10"><br></br>
<input type="text" name="like" placeholder="Enter Interests and likes"><br></br>
<input type="text" name="location" placeholder="Enter your location"><br></br>
<input type="submit" value="REGISTRATION"style="background-color: yellowgreen;color: white;height: 30px"><br></br>
                                                         
                
            
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
