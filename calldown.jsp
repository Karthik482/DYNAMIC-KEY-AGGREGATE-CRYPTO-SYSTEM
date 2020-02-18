<%@page import="cloud.Down"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%
String me = session.getAttribute("UNAME").toString();
String fi = request.getParameter("filename").trim();
String pubk = request.getParameter("publickey").trim();
String aggk = request.getParameter("aggkey").trim();

System.out.println(me+fi+pubk+aggk);
//id, userid, publickey_, aggrekey_, filename_
Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
ResultSet rst = st.executeQuery("select * from fileshare where userid='"+me+"' AND publickey_='"+pubk+"' AND aggrekey_='"+aggk+"' AND filename_='"+fi+"' ");
if(rst.next()){
    new Down().don(fi,pubk);
     response.sendRedirect("userpage.jsp?dn=downloaded sucess..!");
}else{
out.print("Error Found Please Check Your Public Key or Aggregate Key or FileName");
}



%>
