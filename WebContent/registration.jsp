package web;

<%-- 
    Document   : registration
    Created on : Jun 24, 2009, 5:25:35 PM
    Author     : sravs n navs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<%@page import="java.sql.*" %>
    <body>

   <%
        String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String uname= request.getParameter("uname");
String gender=request.getParameter("gender");
String password= request.getParameter("password");
try
	{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","");
PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?)");
ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,uname);
ps.setString(4,password);
ps.setString(5,gender);
System.out.println("registration success");
int r=ps.executeUpdate();
System.out.println("registration success"+r);
if(r>0)
    {
    %>
    <jsp:forward page="login.jsp"/>
else{%>
<jsp:forward page="reg.jsp"/>
    <%
    }

	}
	catch(Exception e)
	{
		e.printStackTrace();
		System.out.println("Syntax error");
    }
%>
    </body>
</html>
