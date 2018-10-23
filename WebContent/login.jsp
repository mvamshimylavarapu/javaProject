package web;

<%-- 
    Document   : login
    Created on : Jun 24, 2009, 5:34:27 PM
    Author     : sravs n navs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
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
<script language="JavaScript">
    function validate()
    {
        if(document.login.uname.value==""||document.login.password.value=="")
            {
                alert("fields cannot be empty");
                return false;
            }

    else
        {
            return true;

        }
    }
</script>
</head>
<body>
<div class="ex"><h1><p>FORM CODE GENERATOR</p>
</h1><br>
        <br>



<h6><a href="home.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="reg.jsp">Registration</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="login.jsp">Login</a><tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="aboutus.html">AboutUs</a>&nbsp;</h6><tr>
    <br>
        <br>
            <br>
                <br>
 <form name="login" action="lgn.jsp" method="post" onsubmit="return validate()">
userid<input type=text name="uname"><br><br>
password<input type="password" name="password"><br><br>
<input type="submit" value="submit">
</form>
<br><br>
    <br>
        <br>
            <br>
                <br>
                    <br>

</div>
</body>

</html>

