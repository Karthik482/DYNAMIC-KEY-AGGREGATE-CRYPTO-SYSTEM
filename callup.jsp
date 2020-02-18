<%@page import="cloud.Upload"%>
<%
String pubk = request.getParameter("publickey").trim();

 new Upload().con(pubk);
    response.sendRedirect("adminpage.jsp?msg=action done..!");
%>
