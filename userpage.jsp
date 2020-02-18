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
        var a = document.f1.filename.value;
        var b = document.f1.publickey.value;
        var c = document.f1.aggkey.value;
        
        if(a==0){
            alert('Please enter FileName..!');            
            return false;
        }
        if(b==0){
            alert('Please enter Aggregate Key..!');           
            return false;
        }
        if(c==0){
            alert('Please enter Public Key..!');           
            return false;
        }
       
       
    }
    
</script>
</head>
<body>
    
       <%
if(request.getParameter("dn")!=null){
    
    out.print("<script>alert('Downloaded Sucessfully..!')</script>");
}    
%>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="userpage.jsp"><span>Home Page</span></a></li>
          <li><a href="index.jsp"><span>Logout</span></a></li>
          
       
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
          <h2>Abstract</h2>
          <p class="infopost"><b>Index Terms:</b> Cloud storage, data sharing, key-aggregate encryption, patient-controlled encryption</p>
          <div class="clr"></div>
          <div class="img"><img src="images/img1.jpg" width="178" height="185" alt="" class="fl" /></div>
          <div class="post_content">
            <div>
                
                <%
String me = session.getAttribute("UNAME").toString();                
%>
         Welcome: <%=me%>         
<img src="images/admin.jpg" width="500" height="250"><br></br>
                      <h2><font color="red">Click here to Download Files</font></h2>
              </div>
<form action="calldown.jsp" name="f1" onsubmit="return check()" method="get">
                <input type="text" name="filename" style="width: 220px; height: 40px;" placeholder="Enter File Name"><br>
                <input type="text" name="aggkey" style="width: 220px; height: 40px;" placeholder="Enter Aggregate Key"><br>
                <input type="text" name="publickey" style="width: 120px; height: 40px;" placeholder="Enter Public Key">
                <input type="submit" value="FileDownload" style="width: 100px; height: 40px; color: greenyellow; background: red"/>  
    </form>
<br></br>
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
