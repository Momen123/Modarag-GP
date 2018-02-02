<%-- 
    Document   : loginFailled
    Created on : Jun 24, 2016, 4:30:52 PM
    Author     : F 16
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>MODARAG</title>
<link rel="stylesheet" type="text/css" href="myStyle.css">
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
</head>

<body>
<div class="container">
<p> Welcome to MODARAG </p>
 <h2>Log in </h2>
 <span id="amr" class="amr">*please correct your email or your password</span>
 <form action="login.jsp">
  <div class="loginpanel">
   <div class="txt">
       <input id="user" type="text" placeholder="E-mail" name="email" />
    <label for="user" class="entypo-user"></label>
   </div>
   <div class="txt">
       <input id="pwd" type="password" placeholder="Password" name="pass"   />
    <label for="pwd" class="entypo-lock"></label>
   </div>
   <div class="buttons">
    <input type="submit" value="Login"/>
    <span>
      <a href="register.jsp" class="entypo-user-add register">Register</a>
    </span>
   </div>
  </div>
 </form>
</div>
<script src="script.js">
</script>
</body>
</html>
