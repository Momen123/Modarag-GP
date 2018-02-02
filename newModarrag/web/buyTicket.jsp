<%-- 
    Document   : buyTicket
    Created on : Jun 25, 2016, 1:59:29 PM
    Author     : F 16
--%>
<%@page import="java.util.*"%>
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
        <link rel="stylesheet" type="text/css" href="description.css">
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
                <li><a href="clubs.jsp">Clubs</a></li>
                <li><a href="matchs.jsp">Matches</a></li>
                <li class="active">Chose Class</li>
            </ol>
        </div>
        <div class="container">
            <form action="confirmBuyingTicket.jsp">
                <%
                    Enumeration e = request.getParameterNames();
                    String reqid = (String) e.nextElement();
                    int requestedID = Integer.parseInt(reqid);
                    
                    
                    
                    
                    session.removeAttribute("matchID");
                    session.setAttribute("matchID", requestedID);
                    Connection conn = DBConnection.getActiveConnection();
                    String sql = "Select * from modarag.match where `matchID` = ? ; ";
                    PreparedStatement stmt;
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, requestedID);
                    ResultSet rs = stmt.executeQuery();
                    rs.next();
                    int firstTeamID = rs.getInt("firstTeamID");
                    int secondTeamID = rs.getInt("secondTeamID");
                    sql = "Select * from team where `teamID` = ? ";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, firstTeamID);
                    ResultSet rs1 = stmt.executeQuery();
                    rs1.next();
                    String firstTeamName = rs1.getString("teamName");
                    String firstTeamImage = rs1.getString("imagePath");
                    sql = "Select * from team where `teamID` = ? ";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, secondTeamID);
                    ResultSet rs2 = stmt.executeQuery();
                    rs2.next();
                    String secondTeamName = rs2.getString("teamName");
                    String secondTeamImage = rs2.getString("imagePath");
                    String className;
                    int classP = 0, classC = 0, classR = 0;
                    int classCounter = 0;
                    sql = "Select * from class where `MID` = ? ";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, requestedID);
                    ResultSet rs4 = stmt.executeQuery();
                    
                    
                    ArrayList<Integer> ticketsCount = new ArrayList<Integer>();
                    ArrayList<Integer> remainingTickets = new ArrayList<Integer>();
                    
                    
                    while (rs4.next()) {
                        sql = "Select * from ticket where `maID` = ? and `claID` = ? ";
                        stmt = conn.prepareStatement(sql);
                        stmt.setInt(1, requestedID);
                        stmt.setInt(2, rs4.getInt(1));
                        ResultSet rs5 = stmt.executeQuery();
                        while (rs5.next()) {
                            classCounter++;
                        }
                        //System.out.println(ticketsCount);
                        ticketsCount.add(classCounter);
                        classCounter = 0;
                    }
                    /* int firstClassP = 0, firstClassC = 0, firstClassR = 0,
                     secondClassP = 0, secondClassC = 0, secondClassR = 0,
                     thirdClassP = 0, thirdClassC = 0, thirdClassR = 0,
                     fourthClassP = 0, fourthClassC = 0, fourthClassR = 0;*/
                %>

                <div class="col-lg-12 col-md-12 col-sm-12">
                    <h2 class="text-primary text-center"> Schedule </h2>
                </div>
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-2">
                        <img src="TEAMS/<%=firstTeamImage%>" class="img-circle myImg">
                    </div>
                    <div class="col-lg-3  col-md-3 col-sm-3">
                        <p> <%=firstTeamName%></p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2">
                        <p> vs </p>
                    </div>
                    <div class="col-lg-3  col-md-3 col-sm-3">
                        <p> <%=secondTeamName%> </p>
                    </div>
                    <div class="col-lg-2  col-md-2 col-sm-2">
                        <img src="TEAMS/<%=secondTeamImage%>" class="img-circle myImg edit">
                    </div>
                </div>
                <table class="table-fill">
                    <thead>
                        <tr >
                            <th class="text-left">CLASS</th>
                            <th class="text-left">PRICE</th>
                            <th class="text-left">CAPACITY</th>
                            <th class="text-left">REMAINING</th>

                        </tr>
                    </thead>
                    <tbody class="table-hover">
                        <%
                            int i = 0;
                            sql = "Select * from class where `MID` = ? ";
                            stmt = conn.prepareStatement(sql);
                            stmt.setInt(1, requestedID);
                            ResultSet rs3 = stmt.executeQuery();
                            while (rs3.next()) {
                                remainingTickets.add(rs3.getInt(4) - ticketsCount.get(i));
                        %>


                        <tr>
                            <td class="text-left"><%=rs3.getString(3)%></td>
                            <td class="text-left"><%=rs3.getInt(5)%></td>
                            <td class="text-left"><%=rs3.getInt(4)%></td>
                            <td class="text-left"><%=remainingTickets.get(i)%></td>

                        </tr>
                        <%
                                i++;
                            }
                        %>

                    </tbody>
                </table>
                <div class="col-lg-2">
                </div>
                <div class="col-lg-8">
                        <p class="edittt"> Choose Class :</p>
                    <div class="select">
                        <select name="selectClass" id="selectC">
                            <option hidden> CLASS</option>
                            <%
                            sql = "Select * from class where `MID` = ? ";
                            stmt = conn.prepareStatement(sql);
                            stmt.setInt(1, requestedID);
                            ResultSet finalRS = stmt.executeQuery();
                            i=0;
                            while(finalRS.next())
                            {
                                if(remainingTickets.get(i)!=0)
                                {
                            %>
                            <option value="<%=finalRS.getInt(1) %>"><%=finalRS.getString(3)%></option>
                            <%
                                }
                                i++;
                            }
                            %>
                        </select>  
                    </div>
                    <input type="submit" name="" value="Confirm"/>
                </div>
                <div class="col-lg-2">
                </div>
                <div class="white">
                </div>
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
