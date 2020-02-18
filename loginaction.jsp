<%@page import="pack.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
  String uname=request.getParameter("user");
            String pass=request.getParameter("pass");
            
          Connection con= DbConnector.getConnection();
          Statement st=con.createStatement();
          ResultSet rt=st.executeQuery("select * from user_reg where username='"+uname+"'");
          if(rt.next()){
              String p=rt.getString("password");
              String activate=rt.getString("ustatus");
              if(pass.equalsIgnoreCase(p)){
                  if(activate.equalsIgnoreCase("yes")){                   
                      session.setAttribute("UNAME", uname);
                      response.sendRedirect("userpage.jsp?ms=sucess");
                  }
                  else{
                      response.sendRedirect("userlogin.jsp?msg=login fail");
                  }
              }
              else{
                   response.sendRedirect("userlogin.jsp?msg=login fail");
              }
          }
          else{
              response.sendRedirect("userlogin.jsp?msg=login fail");
          }
%>
