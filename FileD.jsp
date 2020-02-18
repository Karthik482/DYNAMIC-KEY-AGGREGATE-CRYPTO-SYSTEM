<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DbConnector"%>
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
    <%
if(request.getParameter("st")!=null){
out.print("<script>alert('File Shared Sucessfully..!')</script>");
}    
%>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
            <li class="active"><a href="adminpage.jsp"><span>Home Page</span></a></li>
          <li><a href="FileD.jsp"><span>File Details</span></a></li>
          <li><a href="UserD.jsp"><span>User Details</span></a></li>
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
        <div class="clr"></div>
          <div class="img"><img src="images/img1.jpg" width="178" height="185" alt="" class="fl" /></div>
          <div class="post_content">
              
              <table border="2" width="700" >
           <tr style="background-color: #00ccff; font-family: monospace; font-weight: bold;">
             <td>FILE NAME</td>
             <td>TIME</td>
             <td>FILE SIZE</td>
             <td>AGGREGATE KEY</td>
             <td>PUBLIC KEY</td>
<!--             <td>SELECT USER</td>-->
             <td>ACTION</td>
            </tr>

            <%
                   String n=null, u=null,p=null,m=null,a=null,l=null,users=null,t=null,msg=null;                    
                   String c =",";
                    Connection con = DbConnector.getConnection();
                    Statement st = con.createStatement();
                    Statement st1 = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from admin  ");
                    while(rs.next()){                        
                    n = rs.getString("name");
                    u = rs.getString("time_");
                    p = rs.getString("status_");
                    m = rs.getString("files");
                    l = rs.getString("id");
                    
              
            %>
            <tr>
                <td style="color:red; font-weight: bold"><%=n%></td>
                <td style="color:green; font-weight: bold"><%=u%></td>
                <td style="color:green; font-weight: bold"><%=m %> Bytes</td>
                <td style="color:orange; font-weight: bold"><%=l%></td>
                <td style="color:orange; font-weight: bold"><%=p%></td>            
<!--                <td style="color:orange; font-weight: bold">
                         <select>                            
            <%
                    ResultSet rs1 = st1.executeQuery("select * from user_reg  ");
                    while(rs1.next()){
                    users = rs1.getString("username");
            %>
                     <option>
                         
                         
                    <%=users%> 
                           </option>
                          
                     <% }%>
                     </select>             
              
                </td>-->
                     <td style="color:orange; font-weight: bold"><a href="selectuser.jsp?<%=n%><%=c%><%=p%><%=c%><%=l%>">Share</a></td>
            </tr>
                       <% }%>
        </table>
           
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
