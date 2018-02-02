<%-- 
    Document   : clubs
    Created on : Jun 29, 2016, 9:29:06 PM
    Author     : F 16
--%>

<%@page import="Model.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html><!-- InstanceBegin template="/Templates/masterPage.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
        <meta charset="utf-8">
        <title></title>
        <link rel="stylesheet" type="text/css" href="style-of-index.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Source+Sans+Pro" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="bootstrap.css">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <!-- InstanceBeginEditable name="links" -->
        <!-- links -->
        <link rel="stylesheet" type="text/css" href="listStyle.css">
        <link href="https://fonts.googleapis.com/css?family=Mitr|Slabo+27px|Work+Sans" rel="stylesheet">
        <!-- end links -->
        <!-- InstanceEndEditable --><!--//------->

    </head>

    <body>
        <div class="nnav" id="momen">
 <div class="container">
  <div class="col-lg-12 col-md-6">
   <p class="fa fa-phone"> 01013563188 </p>
   <p class="fa fa-location-arrow"> 12556 91 Hdayek El-Ahraam </p>
   <p class="fa fa-envelope"> momenahmedsaid@stud.fci-cu.edu.eg </p>
  </div>
 </div>
</div>
    <div class="border-Bar">
 <div class="square fa fa-arrow-up" id="amr">
 </div>
</div>
<!--//------->
<!--pic------->
 <div class="pic">
  <img src="logo.svg" class="img-responsive">
 </div>
<!--end pic------>

<!-- nav bar -->
<div class="meenu">
 <div class="nested-meenu">
  <ul>
    <li><a href="matchs.jsp">MATCHS</a></li>
    <li><a href="clubs.jsp">CLUBS</a></li>
    <li><a href="tickets.jsp">My Tickets</a></li>
  </ul>
  <div class="logout fa fa-sign-out">
   <a href="index.html">Log out </a>
  </div>
  <div class="myAccount fa fa-user">
   <a href="myAccount.jsp">My Account </a>
  </div>
 </div>
</div>
        <!-- end nav --><!-- InstanceBeginEditable name="forMatchList" -->
        <div class="container">
            <ol class="breadcrumb">
                <li class="active">clubs</li>
            </ol>
        </div>
        <div class="container">
            <div class="col-lg-12">
                <h2 class="text-primary text-center"> CLUBS </h2>
            </div>
            <form action="selectedClub.jsp">

                <%
                    Connection conn = DBConnection.getActiveConnection();
                    String sql = "Select * from modarag.team ; ";
                    PreparedStatement stmt;
                    stmt = conn.prepareStatement(sql);
                    ResultSet rs = stmt.executeQuery();
                    while(rs.next())
                    {
                %>
                <div class="row">
                    <div class="col-lg-1">
                        </div>
                    <div class="col-lg-8 edit9">
                        <img src="TEAMS/<%=rs.getString(3) %>" class="img-circle my-Img"><%=rs.getString(2) %>
                        <input  type="submit" class="button" name="<%=rs.getInt(1) %>" value="Show Matches">
                        <br>
                    </div>
                        
                        <div  class="col-lg-3">
                            </div>
                </div>
                
                <%  
                    }
                %>
            </form> 


        </div>
        <!-- InstanceEndEditable -->

        <!-- fotter -->
        <footer class="footer-distributed">

            <div class="footer-left">

                <h3>El-<span>MODARAG</span></h3>

                <p class="footer-company-name">Wolf pack  &copy; 2016</p>
            </div>

            <div class="footer-center">

                <div>
                    <i class="fa fa-map-marker"></i>
                    <p><span>91 Hdayek El-Ahraam</span> cairo, egypt</p>
                </div>

                <div>
                    <i class="fa fa-phone"></i>
                    <p>01013563188</p>
                </div>

                <div>
                    <i class="fa fa-envelope"></i>
                    <p><a href="mailto:momenahmedsaid@gmail.com">momenahmedsaid@gmail.com</a></p>
                </div>

            </div>

            <div class="footer-right">

                <p class="footer-company-about">
                    <span>About the company</span>
                    It's a website for the Egyptian league matches' tickets reservation. 
                </p>
                <div class="footer-icons">

                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-github"></i></a>

                </div>

            </div>
        </footer>
        <div class="nav-button">
            <div class="nested-nav-button">
                <p> Copyright &copy; Wolf pack  2016. All Rights Reserved</p>
            </div>
        </div>
       <script type="text/javascript">
    function changeMe(sel)
    {
      sel.style.color = "#000";              
    }
</script>
<script type="text/javascript">
document.getElementById("amr").onclick = function(){
	"use strict";	
	document.getElementById("momen").style.display="block";
	  
	};
	
document.getElementById("momen").onclick = function(){
	"use strict";
		document.getElementById("momen").style.display="none";
	 
    };

</script>
</body>
</html>
