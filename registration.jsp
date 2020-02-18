

<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
            String name=request.getParameter("name");
            String uname=request.getParameter("username");
            String pass=request.getParameter("password");
            String mail=request.getParameter("mail");
            String ph=request.getParameter("mobile");
            String like=request.getParameter("like");
            String loc=request.getParameter("location");
            
          Connection con= DbConnector.getConnection();
          Statement st=con.createStatement();
           int i=st.executeUpdate("insert into user_reg (username,name,password,mail,phoneno,ustatus,likes,location)values('"+uname+"','"+name+"','"+pass+"','"+mail+"','"+ph+"','yes','"+like+"','"+loc+"')");
          con.close();
           if(i!=0){
              response.sendRedirect("userlogin.jsp?status='registered'");
          }else{
                response.sendRedirect("userlogin.jsp?msg='not registered'");
          }
%>
