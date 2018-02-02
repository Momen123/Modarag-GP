package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class editFailled_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"my account.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Fjalla+One|Muli|Open+Sans|Work+Sans\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"my account.css\">\n");
      out.write("        <!-- InstanceEndEditable --><!--//------->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"nnav\" id=\"momen\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"col-lg-12 col-md-6\">\n");
      out.write("                    <p class=\"fa fa-phone\"> 01112070653 </p>\n");
      out.write("                    <p class=\"fa fa-location-arrow\"> 102580 Santa Monica BLVD Los Angeles </p>\n");
      out.write("                    <p class=\"fa fa-envelope\"> info@yourwebsite.com </p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"border-Bar\">\n");
      out.write("            <div class=\"square fa fa-arrow-up\" id=\"amr\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--//------->\n");
      out.write("        <!--pic------->\n");
      out.write("        <div class=\"pic\">\n");
      out.write("            <img src=\"logo.svg\" class=\"img-responsive\">\n");
      out.write("        </div>\n");
      out.write("        <!--end pic------>\n");
      out.write("\n");
      out.write("        <!-- nav bar -->\n");
      out.write("        <div class=\"meenu\">\n");
      out.write("            <div class=\"nested-meenu\">\n");
      out.write("                <!--<ul>\n");
      out.write("                  <li><a href=\"#\">HOME</a></li>\n");
      out.write("                  <li><a href=\"#\" id=\"yes\">CLUBS</a></li>\n");
      out.write("                  <li><a href=\"#\">TICKETS</a></li>\n");
      out.write("                  <li><a href=\"list.html\">Schedule</a></li>\n");
      out.write("                  <li><a href=\"#\">ABOUT US</a></li>\n");
      out.write("                </ul>-->\n");
      out.write("\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"matchs.jsp\">MATCHS</a></li>\n");
      out.write("    <li><a href=\"clubs.jsp\">CLUBS</a></li>\n");
      out.write("    <li><a href=\"tickets.jsp\">My Tickets</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"logout fa fa-sign-out\">\n");
      out.write("                    <a href=\"index.html\">Log out </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"myAccount fa fa-user\">\n");
      out.write("                    <a href=\"myAccount.html\">My Account </a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- end nav --><!-- InstanceBeginEditable name=\"forMatchList\" -->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <ol class=\"breadcrumb\">\n");
      out.write("                <li><a href=\"myAccount.jsp\">My Account</a></li>\n");
      out.write("                <li class=\"active\">Edit Profile</li>\n");
      out.write("            </ol>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"account\">\n");
      out.write("               <p> momen el gml </p>\n");
      out.write("\n");
      out.write("            <div class=\"nested-account\">\n");
      out.write("                <div class=\"cont\">\n");
      out.write("                    <form action=\"confirmEditting.jsp\">\n");
      out.write("                        <div class=\"hh\">\n");
      out.write("                            <h1> Edit Profile </h1>\n");
      out.write("                        </div>\n");
      out.write("                        <p> name* </p>\n");
      out.write("                        <input type=\"text\" name=\"name\">\n");
      out.write("                        <p> password* </p>\n");
      out.write("                        <input type=\"password\" name=\"pass\">\n");
      out.write("                        <p> email* </p>\n");
      out.write("                        <input type=\"email\" name=\"email\">\n");
      out.write("                        <input type=\"submit\" value=\"Submit\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- InstanceEndEditable -->\n");
      out.write("\n");
      out.write("        <!-- fotter -->\n");
      out.write("        <footer class=\"footer-distributed\">\n");
      out.write("\n");
      out.write("            <div class=\"footer-left\">\n");
      out.write("\n");
      out.write("                <h3>site<span>name</span></h3>\n");
      out.write("\n");
      out.write("                <p class=\"footer-company-name\">moamen  &copy; 2016</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer-center\">\n");
      out.write("\n");
      out.write("                <div>\n");
      out.write("                    <i class=\"fa fa-map-marker\"></i>\n");
      out.write("                    <p><span>21 rehab Street</span> cairo, egypt</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div>\n");
      out.write("                    <i class=\"fa fa-phone\"></i>\n");
      out.write("                    <p>01112070653</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div>\n");
      out.write("                    <i class=\"fa fa-envelope\"></i>\n");
      out.write("                    <p><a href=\"mailto:support@company.com\">support@company.com</a></p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer-right\">\n");
      out.write("\n");
      out.write("                <p class=\"footer-company-about\">\n");
      out.write("                    <span>About the company</span>\n");
      out.write("                    Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.\n");
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
      out.write("                <p> Copyright &copy; moamen el gml  2016. All Rights Reserved</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function changeMe(sel)\n");
      out.write("            {\n");
      out.write("                sel.style.color = \"#000\";\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            document.getElementById(\"amr\").onclick = function () {\n");
      out.write("                \"use strict\";\n");
      out.write("                document.getElementById(\"momen\").style.display = \"block\";\n");
      out.write("\n");
      out.write("            };\n");
      out.write("\n");
      out.write("            document.getElementById(\"momen\").onclick = function () {\n");
      out.write("                \"use strict\";\n");
      out.write("                document.getElementById(\"momen\").style.display = \"none\";\n");
      out.write("\n");
      out.write("            };\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("    <!-- InstanceEnd --></html>\n");
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
