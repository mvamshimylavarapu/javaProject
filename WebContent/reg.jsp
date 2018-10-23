package web;

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
       
        if(document.reg.fname.value==""||document.reg.lname.value==""||document.reg.uname.value==""||document.reg.password.value=="")
            {
                alert("fields cannot be empty");
                return false;
            }
            else
                if(document.reg.password.value.length<6)
                    {
                    alert("password must be of minimum six characters");
                    return false;
                    }
       else
          if(document.reg.fname.value==document.reg.uname.value)
              {
                  alert("should not be same");
                  return false;
              }
              else
          if(document.reg.password.value!=document.reg.password1.value)
              {
                  alert("are not  same");
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
<a href="aboutus.html">AboutUs</a>&nbsp;</h6>
<br>
    <br>
<form name="reg" action="registration.jsp" method="post" onsubmit="return validate()" bgimage="56.jpg">
 <i><b>register to login</b></i><br>
firstName<input type=text name="fname"><br><br>
lastName<input type=text name="lname"><br><br>
gender &nbsp;&nbsp; male<input type="radio" name ="gender" value="male">
       &nbsp; female<input type="radio" name ="gender" value="female"><br><br>
userName<input type=text name="uname"><br><br>
password<input type="password" name="password"><br><br>
confirm password<input type="password" name="password1"><br><br>
<input type="submit" value="submit"><br><br><br><br><br><br>
    <br>
</form>
</div>
</body>

</html>

