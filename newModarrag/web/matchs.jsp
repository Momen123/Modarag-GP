<%-- 
    Document   : matchs
    Created on : Jun 24, 2016, 7:26:34 PM
    Author     : F 16
--%>
<%@page import="Model.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html><!-- InstanceBegin template="/Templates/masterPage.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta charset="utf-8">
<title>MATCHS</title>
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
                <li class="active">Matches</li>
            </ol>
        </div>
<div class="container">
 <div class="col-lg-12 col-md-12 col-sm-12">
  <h2 class="text-primary text-center"> Matches </h2>
 </div>
    <form action="buyTicket.jsp">
    <%
        //where `date` between adddate(now(),+5) and adddate(now(),+2)
            Connection conn = DBConnection.getActiveConnection();
            String sql = "Select * from modarag.match where `date` < CURRENT_DATE() ; ";
            PreparedStatement stmt;
            stmt = conn.prepareStatement(sql);
            ResultSet rs1 = stmt.executeQuery();
            while (rs1.next()) {
                sql = "delete  from modarag.ticket where `maID` = ? ; ";
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, rs1.getInt(1));
                stmt.executeUpdate();
                sql = "delete  from modarag.class where `MID` = ? ; ";
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, rs1.getInt(1));
                stmt.executeUpdate();
                sql = "delete  from modarag.match where `matchID` = ? ; ";
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, rs1.getInt(1));
                stmt.executeUpdate();
            }
            sql = "Select * from modarag.match; ";
            stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();            
            while(rs.next())
            {
                String stadiumName=rs.getString("stadiumName");
                int matchID=rs.getInt("matchID");
                String date=rs.getString("date");
                int firstTeamID = rs.getInt("firstTeamID");
                int secondTeamID = rs.getInt("secondTeamID");
                sql ="Select * from team where `teamID` = ? ";
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, firstTeamID);
                ResultSet rs2 = stmt.executeQuery();
                rs2.next();
                String firstTeamName=rs2.getString("teamName");
                String firstTeamImage=rs2.getString("imagePath");
                sql ="Select * from team where `teamID` = ? ";
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, secondTeamID);
                ResultSet rs3 = stmt.executeQuery();
                rs3.next();
                String secondTeamName=rs3.getString("teamName");
                String secondTeamImage=rs3.getString("imagePath");                        
%>           
 
    

    
  <div class="row">
    <div class="col-lg-2 col-md-2 col-sm-2">
     <img src="TEAMS/<%= firstTeamImage %>" class="img-circle myImg">
    </div>
   <div class="col-lg-3  col-md-3 col-sm-3">
     <p> <%= firstTeamName %> </p>
   </div>
   <div class="col-lg-2 col-md-2 col-sm-2">
    <p> vs </p>
   </div>
   <div class="col-lg-3  col-md-3 col-sm-3">
    <p> <%= secondTeamName %> </p>
   </div>
   <div class="col-lg-2  col-md-2 col-sm-2">
    <img src="TEAMS/<%= secondTeamImage %>" class="img-circle myImg edit">
   </div>
  </div>
 <div class="row rowEdit">
  <div class="col-lg-4 col-md-4 col-sm-4">
   <div class="col-lg-6 col-sm-6 col-md-6">
    <img src="Borg-El-Arab-Stadium.jpg" class="myImg editPic">
   </div>
   <div class="col-lg-6 col-md-6 col-sm-6">
    <p class="edit edit4"> <%= stadiumName %> </p>
   </div>
   </div>
   <div class="col-lg-4 col-md-4 col-sm-4">
    <p class="edit4 edit5"> <%= date %> </p>
   </div>
   <div class="col-lg-4 col-md-4 col-sm-4">
       <input type="submit" value="Buy" name="<%= matchID %>"/>
   </div>
 </div>
 <div class="white">
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
