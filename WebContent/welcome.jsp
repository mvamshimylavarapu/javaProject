package web;

<%-- 
    Document   : welcome
    Created on : Jun 24, 2009, 5:44:37 PM
    Author     : sravs n navs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style type="text/css">

.ex
{
width:1024px;
padding:10px;
border:50px;
color:black;
margin:0px;
background-image:url("56.jpg");
}
h1 {text-align:center}
p
{
font:bold italic small-caps  70px chiller;
}
a
{
font:normal small-caps 500 25px arial;
}
h6{text-align:left}

</style>

    </head>
    <body>
        <div class="ex"><h1><p>FORM CODE GENERATOR</p>
</h1><br>
    <br>

<h6><a href="home.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="reg.jsp">Registration</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="login.jsp">Login</a><tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="aboutus.html">AboutUs</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="signout.jsp">signout</a>s</h6>
 <br>
     <br><%
if(session.getAttribute("user")!=null)
{
String user=(String)session.getAttribute("user");

%>

welcome,
<%=user%>
  <form name="welcome" action="label.jsp" method="post">
<br>text fields<input type="text" name="txtfld">
<br>checkbox<input type="text" name="txtfld1"></br>
<br>radiobuttons<input type="text" name="txtfld2"></br>
<br>list<input type="text" name="txtfld3"></br>
<br>textarea<input type="text" name="txtfld4"></br>

<br>multipleselection<input type="text" name="txtfld5"></br>
<input type="submit" value="next">
  </form>
<br> <br>
<%}%></div>
    </body>
</html>
