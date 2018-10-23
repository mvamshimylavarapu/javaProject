package web;

<%-- 
    Document   : label
    Created on : Jun 27, 2009, 3:16:51 PM
    Author     : Administrator
--%>

<%@page import ="java.util.*"contentType="text/html" pageEncoding="UTF-8"%>
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
    <body background-image="56.jpg">
    
        <div class="ex"><h1><p>FORM CODE GENERATOR</p>
        </h1><br>
    <br>

<h6><a href="home.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="reg.jsp">Registration</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="login.jsp">Login</a><tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="aboutus.html">AboutUs</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="signout.jsp">signout</a></h6>
<br>
    <br>

<form name="label" action="fields.jsp" method="post">
<%
        String txtfld=request.getParameter("txtfld");
        String txtfld1=request.getParameter("txtfld1");
        String txtfld2=request.getParameter("txtfld2");
        String txtfld3=request.getParameter("txtfld3");
        String txtfld4=request.getParameter("txtfld4");
        String txtfld5=request.getParameter("txtfld5");
        String txtfld6=request.getParameter("txtfld6");
        String txtfld7=request.getParameter("txtfld7");


        java.util.HashMap fields=new HashMap();
        fields.put("ntxt",txtfld);
        fields.put("nchk",txtfld1);
        fields.put("nradio",txtfld2);
        fields.put("nlist",txtfld3);
        fields.put("ntarea",txtfld4);
        fields.put("nmullist",txtfld5);
     //   fields.put("nsubmit",txtfld6);
      //  fields.put("nreset",txtfld7);

        System.out.println("value from map in lable jsp="+fields.get("ntxt"));
        session.setAttribute("fields",fields);


        int i=Integer.parseInt(txtfld);
        int a=Integer.parseInt(txtfld1);
        int b=Integer.parseInt(txtfld2);
        int c=Integer.parseInt(txtfld3);
        int d=Integer.parseInt(txtfld4);
        int e=Integer.parseInt(txtfld5);
        
        
        for(int j=1;j<=i;j++)
            {
           %>

         label for txtfld <%=j%> <input type="text" name="txtflda<%=j%>"><br>
             
            <%
            }
        for(int j=1;j<=a;j++)
            {
           %>
          labels of checkboxes <%=j%>: <input type="text" name="txtfldb<%=j%>"><br>
            <%
            }

        for(int j=1;j<=b;j++)
            {
           %>
          labels of radio buttons <%=j%><input type="text" name="txtfldc<%=j%>"><br><br>
            <%
         }
        for(int j=1;j<=c;j++)
            {
           %>
   <BR>
       labels for list <%=j%> <input type="text" name="txtfldd<%=j%>"><br>
            <%
            }
        for(int j=1;j<=d;j++)
            {
           %>
        label for textarea <%=j%><input type="text" name="txtflde<%=j%>"><BR>

                <%
        }
        for(int j=1;j<=e;j++)
            {
           %>
           label for multiple selection <%=j%> :<input type="text" name="txtfldf<%=j%>"><br>
    <%
    }
        %>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="go">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"><br>
     <br>
         <br>
      </form>
      </div>
    </body>
</html>
