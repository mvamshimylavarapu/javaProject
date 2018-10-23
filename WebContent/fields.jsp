
<%-- 
    Document   : fields
    Created on : Jun 26, 2009, 3:17:13 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HT


ML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
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
</h1>
<br>
    <br>

<h6><a href="home.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="reg.jsp">Registration</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="login.jsp">Login</a><tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="aboutus.html">AboutUs</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="signout.jsp">signout</a></h6>
<br>
    <br>
        <br>
<form>
    <%
          /*  request.getAttribute("txtfld");
            request.getAttribute("txtfld1");
            request.getAttribute("txtfld2");
            request.getAttribute("txtfld3");
            request.getAttribute("txtfld4");
            request.getAttribute("txtfld5");
            request.getAttribute("txtfld6");
            request.getAttribute("txtfld7");*/


    java.util.HashMap fields=(java.util.HashMap)session.getAttribute("fields");

    int ntxt=Integer.parseInt(fields.get("ntxt").toString());
    int nchk=Integer.parseInt(fields.get("nchk").toString());
    int nradio=Integer.parseInt(fields.get("nradio").toString());
    int nlist=Integer.parseInt(fields.get("nlist").toString());
    int ntarea=Integer.parseInt(fields.get("ntarea").toString());
    int nmullist=Integer.parseInt(fields.get("nmullist").toString());
   // int nsubmit=Integer.parseInt(fields.get("nsubmit").toString());
    


System.out.println("ntxt="+ntxt);
System.out.println("nchk="+nchk);

    String txtfld=request.getParameter("txtfld");
    String txtfld1=request.getParameter("txtfld1");
    String txtfld2=request.getParameter("txtfld2");
    String txtfld3=request.getParameter("txtfld3");
    String txtfld4=request.getParameter("txtfld4");
    String txtfld5=request.getParameter("txtfld5");
    String txtfld6=request.getParameter("txtfld6");
    String txtfld7=request.getParameter("txtfld7");

       
      // int f=Integer.parseInt(txtfld6);
       // int g=Integer.parseInt(txtfld7);


        
        for(int j=1;j<=ntxt;j++)
            {
                String lable=request.getParameter("txtflda"+j);
           %>
           
          <%=lable%> &nbsp;<input type="text" name="txtflda"><br>
            <%   
            }
        for(int j=1;j<=nchk;j++)
         {
            String lable1=request.getParameter("txtfldb"+j);
           %>

          <%=lable1%>&nbsp;<INPUT TYPE="CHECKBOX" NAME="chkbx">&nbsp;&nbsp;&nbsp;
            <%
            }
            %>
            <br>
                <%
        for(int j=1;j<=nradio;j++)
            {
            String lable2=request.getParameter("txtfldc"+j);
           %>
          <%=lable2%>&nbsp;<INPUT TYPE="RADIO" NAME="rad">&nbsp;&nbsp;&nbsp;
            <%
            }
    %>
    <br>
        <%
        for(int j=1;j<=nlist;j++)
            {
              String lable3=request.getParameter("txtfldd"+j);
           %>
   <BR>
 <%=lable3%>&nbsp;<SELECT >
<OPTION>default
</SELECT><BR>
            <%
            }
        for(int j=1;j<=ntarea;j++)
            {
         String lable4=request.getParameter("txtflde"+j);
           %>
           <%=lable4%>&nbsp;<input type="text" ROWS=20 COLS=20><BR>

                <%
        }
        for(int j=1;j<=nmullist;j++)
            {
               String lable5=request.getParameter("txtfldf"+j);
           %>
           <BR>
<%=lable5%>&nbsp;<SELECT SIZE=5 MULTIPLE>
<OPTION>default
</SELECT><BR><BR>
    <%
    }
     %>
     <input type="submit" value="submit"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<input type="reset">
         </form>
         <br>
             <br>
                 <br>

         <br>
             <br>
                 <br>
             <br></div>
 </body>
</html>
