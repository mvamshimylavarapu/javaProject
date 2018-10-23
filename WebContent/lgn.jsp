package web;

<%-- 
    Document   : lgn
    Created on : Jun 24, 2009, 5:37:11 PM
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
        String nameu=request.getParameter("uname");
        String namef=request.getParameter("fname");

String password= request.getParameter("password");
try
	{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","");
Statement smt=con.createStatement();

ResultSet rs=smt.executeQuery("select * from register where uname='"+nameu+"'");
if (!rs.next())
{


	out.println("user is invalid");
}
else if(!rs.getString("password").equals(password)){out.println("invalid password");}

else 
    {
session.setAttribute("user",nameu);
response.sendRedirect("welcome.jsp");
    }
%>

<%
	}
	catch(Exception e)
	{
		e.printStackTrace();
		System.out.println("Syntax error");
    }
%>
    </body>
</html>
