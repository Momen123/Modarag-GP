package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import Model.DBConnection;
import java.sql.*;

public final class buyTicket_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html><!-- InstanceBegin template=\"/Templates/masterPage.dwt\" codeOutsideHTMLIsLocked=\"false\" -->\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title></title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style-of-index.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat|Source+Sans+Pro\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"bootstrap.min.css\">\n");
      out.write("        <!-- InstanceBeginEditable name=\"links\" -->\n");
      out.write("        <!-- links -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"listStyle.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Mitr|Slabo+27px|Work+Sans\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"description.css\">\n");
      out.write("        <!-- end links -->\n");
      out.write("        <!-- InstanceEndEditable --><!--//------->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"nnav\" id=\"momen\">\n");
      out.write(" <div class=\"container\">\n");
      out.write("  <div class=\"col-lg-12 col-md-6\">\n");
      out.write("   <p class=\"fa fa-phone\"> 01013563188 </p>\n");
      out.write("   <p class=\"fa fa-location-arrow\"> 12556 91 Hdayek El-Ahraam </p>\n");
      out.write("   <p class=\"fa fa-envelope\"> momenahmedsaid@stud.fci-cu.edu.eg </p>\n");
      out.write("  </div>\n");
      out.write(" </div>\n");
      out.write("</div>\n");
      out.write("    <div class=\"border-Bar\">\n");
      out.write(" <div class=\"square fa fa-arrow-up\" id=\"amr\">\n");
      out.write(" </div>\n");
      out.write("</div>\n");
      out.write("        <div class=\"pic\">\n");
      out.write("            <img src=\"logo.svg\" class=\"img-responsive\">\n");
      out.write("        </div>\n");
      out.write("        <!--end pic------>\n");
      out.write("\n");
      out.write("        <!-- nav bar -->\n");
      out.write("        <div class=\"meenu\">\n");
      out.write("            <div class=\"nested-meenu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"home.jsp\">HOME</a></li>\n");
      out.write("                    <li><a href=\"clubs.jsp\">CLUBS</a></li>\n");
      out.write("                    <li><a href=\"matchs.jsp\">MATCHS</a></li>\n");
      out.write("                    <li><a href=\"aboutUS.jsp\">ABOUT US</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"logout fa fa-sign-out\">\n");
      out.write("                    <a href=\"index.html\">Log out </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"myAccount fa fa-user\">\n");
      out.write("                    <a href=\"myAccount.jsp\">My Account </a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- end nav --><!-- InstanceBeginEditable name=\"forMatchList\" -->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <form action=\"confirmBuyingTicket.jsp\">\n");
      out.write("                ");

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
                
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-12 col-md-12 col-sm-12\">\n");
      out.write("                    <h2 class=\"text-primary text-center\"> Schedule </h2>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-2 col-md-2 col-sm-2\">\n");
      out.write("                        <img src=\"TEAMS/");
      out.print(firstTeamImage);
      out.write("\" class=\"img-circle myImg\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3  col-md-3 col-sm-3\">\n");
      out.write("                        <p> ");
      out.print(firstTeamName);
      out.write("</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-2 col-md-2 col-sm-2\">\n");
      out.write("                        <p> vs </p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3  col-md-3 col-sm-3\">\n");
      out.write("                        <p> ");
      out.print(secondTeamName);
      out.write(" </p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-2  col-md-2 col-sm-2\">\n");
      out.write("                        <img src=\"TEAMS/");
      out.print(secondTeamImage);
      out.write("\" class=\"img-circle myImg edit\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <table class=\"table-fill\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr >\n");
      out.write("                            <th class=\"text-left\">CLASS</th>\n");
      out.write("                            <th class=\"text-left\">PRICE</th>\n");
      out.write("                            <th class=\"text-left\">CAPACITY</th>\n");
      out.write("                            <th class=\"text-left\">REMAINING</th>\n");
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody class=\"table-hover\">\n");
      out.write("                        ");

                            int i = 0;
                            sql = "Select * from class where `MID` = ? ";
                            stmt = conn.prepareStatement(sql);
                            stmt.setInt(1, requestedID);
                            ResultSet rs3 = stmt.executeQuery();
                            while (rs3.next()) {
                                remainingTickets.add(rs3.getInt(4) - ticketsCount.get(i));
                        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"text-left\">");
      out.print(rs3.getString(3));
      out.write("</td>\n");
      out.write("                            <td class=\"text-left\">");
      out.print(rs3.getInt(5));
      out.write("</td>\n");
      out.write("                            <td class=\"text-left\">");
      out.print(rs3.getInt(4));
      out.write("</td>\n");
      out.write("                            <td class=\"text-left\">");
      out.print(remainingTickets.get(i));
      out.write("</td>\n");
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                                i++;
                            }
                        
      out.write("\n");
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-8\">\n");
      out.write("                        <p class=\"edittt\"> Choose Class :</p>\n");
      out.write("                    <div class=\"select\">\n");
      out.write("                        <select name=\"selectClass\" id=\"selectC\">\n");
      out.write("                            <option hidden> CLASS</option>\n");
      out.write("                            ");

                            sql = "Select * from class where `MID` = ? ";
                            stmt = conn.prepareStatement(sql);
                            stmt.setInt(1, requestedID);
                            ResultSet finalRS = stmt.executeQuery();
                            i=0;
                            while(finalRS.next())
                            {
                                if(remainingTickets.get(i)!=0)
                                {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(finalRS.getInt(1) );
      out.write('"');
      out.write('>');
      out.print(finalRS.getString(3));
      out.write("</option>\n");
      out.write("                            ");

                                }
                                i++;
                            }
                            
      out.write("\n");
      out.write("                        </select>  \n");
      out.write("                    </div>\n");
      out.write("                    <input type=\"submit\" name=\"\" value=\"Confirm\"/>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"white\">\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <!-- InstanceEndEditable -->\n");
      out.write("\n");
      out.write("        <!-- fotter -->\n");
      out.write("        <footer class=\"footer-distributed\">\n");
      out.write("\n");
      out.write("            <div class=\"footer-left\">\n");
      out.write("\n");
      out.write("                <h3>El-<span>MODARAG</span></h3>\n");
      out.write("\n");
      out.write("                <p class=\"footer-company-name\">Wolf pack  &copy; 2016</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer-center\">\n");
      out.write("\n");
      out.write("                <div>\n");
      out.write("                    <i class=\"fa fa-map-marker\"></i>\n");
      out.write("                    <p><span>91 Hdayek El-Ahraam</span> cairo, egypt</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div>\n");
      out.write("                    <i class=\"fa fa-phone\"></i>\n");
      out.write("                    <p>01013563188</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div>\n");
      out.write("                    <i class=\"fa fa-envelope\"></i>\n");
      out.write("                    <p><a href=\"mailto:momenahmedsaid@gmail.com\">momenahmedsaid@gmail.com</a></p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer-right\">\n");
      out.write("\n");
      out.write("                <p class=\"footer-company-about\">\n");
      out.write("                    <span>About the company</span>\n");
      out.write("                    It's a website for the Egyptian league matches' tickets reservation. \n");
      out.write("                </p>\n");
      out.write("                <div class=\"footer-icons\">\n");
      out.write("\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-github\"></i></a>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <div class=\"nav-button\">\n");
      out.write("            <div class=\"nested-nav-button\">\n");
      out.write("                <p> Copyright &copy; Wolf pack  2016. All Rights Reserved</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("       <script type=\"text/javascript\">\n");
      out.write("    function changeMe(sel)\n");
      out.write("    {\n");
      out.write("      sel.style.color = \"#000\";              \n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("document.getElementById(\"amr\").onclick = function(){\n");
      out.write("\t\"use strict\";\t\n");
      out.write("\tdocument.getElementById(\"momen\").style.display=\"block\";\n");
      out.write("\t  \n");
      out.write("\t};\n");
      out.write("\t\n");
      out.write("document.getElementById(\"momen\").onclick = function(){\n");
      out.write("\t\"use strict\";\n");
      out.write("\t\tdocument.getElementById(\"momen\").style.display=\"none\";\n");
      out.write("\t \n");
      out.write("    };\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
