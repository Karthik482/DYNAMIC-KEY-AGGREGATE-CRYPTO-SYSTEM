
<%@page import="pack.mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DbConnector"%>
<%
String u;
String k = request.getQueryString().toString();
System.out.println("this is " + k);
String h[] = k.split(",");
String username = h[0];
String filename = h[1];
String publickey = h[2];
String aggrekey = h[3];
System.out.println("username " + username);
System.out.println("filename " + filename);
System.out.println("publickey " + publickey);
System.out.println("aggrkey " + aggrekey);
Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
Statement st1 = con.createStatement();
//id, userid, publickey_, aggrekey_, filename_
ResultSet rst = st1.executeQuery("select * from user_reg where username='"+username+"'");
if(rst.next()){
u = rst.getString("mail");
System.out.println("this is mailid " + u );
  mail m = new mail();
m.mailsend(u, filename, publickey,aggrekey);
}

int i = st.executeUpdate("insert into fileshare(userid, publickey_, aggrekey_, filename_)values('"+username+"','"+publickey+"','"+aggrekey+"','"+filename+"')");
if(i!=0){
  
response.sendRedirect("FileD.jsp?st=send sucess");
}else{
   response.sendRedirect("FileD.jsp?st=error");
}

%>
