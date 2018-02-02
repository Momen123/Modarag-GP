<%-- 
    Document   : registerFailled
    Created on : Jun 23, 2016, 6:07:17 PM
    Author     : F 16
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>MODARAG</title>
<link rel="stylesheet" type="text/css" href="register.css">
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
<link href="https://file.myfontastic.com/wuKGAJSsLHWZhfR7Ej72xh/icon">
<script type = "text/javascript">
            function ValidateForm()
            {
                var Password = document.forms["register"]["pass"].value;
                var cPassword = document.forms["register"]["cPass"].value;
                var nationalID = document.forms["register"]["nationalID"].value;
                if(Password != cPassword)
                {  document.getElementById("amr").innerHTML ="PassWord and confirm password didn't match";
                    return false; }   
                else if (nationalID.length<14||isNaN(nationalID))
                {   document.getElementById("amr").innerHTML ="National ID must be 14 numbers";
                    return false;}
                else
                {  
                    return true;}
            }
        </script> 
</head>

<body>
<div class="container">
<p> Welcome to MODARAG </p>
 <h2>Register</h2>
 <span id="amr" class="amr"></span>
 <form action="registerationCheck.jsp" name="register" onsubmit="return ValidateForm()">
  <div class="loginpanel">
   <div class="txt">
       <input id="user" type="text" placeholder="Username" name="name" />
    <label for="user" class="entypo-user"></label>
   </div>
   <div class="txt">
       <input id="pwd" type="password" placeholder="Password" name="pass"   />
    <label for="pwd" class="entypo-lock"></label>
   </div>
   <div class="txt">
    <input id="Cpwd" type="password" placeholder="conform password"   />
    <label for="pwd" class="entypo-lock"></label>
  </div>
  <div class="txt">
      <input id="email" type="email"  placeholder="E-mail" name="email"   />
    <label for="email" class="entypo-mail"></label>
  </div>
  <div class="txt">
      <input id="Gover" type="text"  placeholder="National ID" name="nationalID"   />
    <label for="Gover" class="icon-government"></label>
  </div>
   <div class="buttons">
    <input type="submit" value="register" id="register"/>
   </div>
  </div>
 </form>
 <span class="registerF"> *you maybe choosed a taken email </span>
</div>
<script src="script.js">
</script>
</body>
</html>
