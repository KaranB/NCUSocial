package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mainpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Main Page</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"mainpage.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css\">\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write("    nav {\r\n");
      out.write("        background-color: #01c7b6;\r\n");
      out.write("        color: white;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    @media only screen and (max-width: 990px) {\r\n");
      out.write("        .side_table {\r\n");
      out.write("            display: none;\r\n");
      out.write("        }\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    a {\r\n");
      out.write("        padding-right: 15px;\r\n");
      out.write("    }\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <script> \r\n");
      out.write("    function preventBack(){\r\n");
      out.write("        window.history.forward();\r\n");
      out.write("    } \r\n");
      out.write("    setTimeout(\"preventBack()\", 0);  window.onunload=function(){null}; \r\n");
      out.write("    </script>\r\n");
      out.write("    ");

//        response.setHeader("Cache-Control","no-cache");
//        String userName = null;
//        Cookie[] cookies = request.getCookies();
//        if(cookies !=null){
//        for(Cookie cookie : cookies){
//            if(cookie.getName().equals("user")) userName = cookie.getValue();
//            }
//        }
//        if(userName == null) response.sendRedirect("index.jsp"); 
        String user = null;
        if(session.getAttribute("user") == null){
            response.sendRedirect("index.jsp");
        }
        else user = (String) session.getAttribute("user");
    String userName = null;
    String sessionID = null;
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("user")) userName = cookie.getValue();
            if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
        }
    }
    
      out.write("\r\n");
      out.write("    <div id=\"header\"></div>\r\n");
      out.write("    <header>\r\n");
      out.write("        <!--navigation bar-->\r\n");
      out.write("        <ul id=\"dropdown1\" class=\"dropdown-content\">\r\n");
      out.write("            <li><a href=\"#!\">Security</a></li>\r\n");
      out.write("            <li>\r\n");
      out.write("                <a href=\"#!\">some</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"divider\"></li>\r\n");
      out.write("            <form action=\"logoutservlet\" method=\"POST\" id=\"logout\">\r\n");
      out.write("                <li><a href=\"javascript:{}\" onClick=\"document.getElementById('logout').submit();\">Log Out</a></li>\r\n");
      out.write("            </form>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <div class=\"navbar-fixed\">\r\n");
      out.write("            <nav>\r\n");
      out.write("                <div class=\"nav-wrapper\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <a style=\"padding-left:20px;\" href=\"#\" class=\"brand-logo\">Logo</a>\r\n");
      out.write("                        <div class=\"col s10 m10 \"><a href=\"#\" data-activates=\"mobile-demo1\" class=\"button-collapse\"><i class=\"material-icons\">menu</i></a></div>\r\n");
      out.write("                        <div class=\"col s2 m2 \"><a href=\"#\" data-activates=\"mobile-demo2\" class=\"button-collapse\" style=\"\"><i class=\"material-icons\">trending_up</i></a></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <ul id=\"nav-mobile\" class=\"right hide-on-med-and-down\" style=\"position:relative; right:20px; top:-21px;\">\r\n");
      out.write("                        <li><a class=\"dropdown-button btn  white teal-text\" href=\"#!\" data-activates=\"dropdown1\">");
      out.print( userName );
      out.write("</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <ul class=\"side-nav\" id=\"mobile-demo1\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <div class=\"userView\">\r\n");
      out.write("                                <div class=\"background\">\r\n");
      out.write("                                    <img src=\"\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <a href=\"#!user\"><img class=\"circle\" src=\"\"></a>\r\n");
      out.write("                                <a href=\"#!name\"><span class=\"white-text name\">John Doe</span></a>\r\n");
      out.write("                                <a href=\"#!email\"><span class=\"white-text email\">jdandturk@gmail.com</span></a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li><a class=\"waves-effect\" href=\"mainpage.jsp\"><i class=\"material-icons\">dns</i>Feed</a></li>\r\n");
      out.write("                        <li><a class=\"waves-effect\" href=\"Myprofile.jsp\"><i class=\"material-icons\">perm_identity</i>My Page</a></li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <div class=\"divider\"></div>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li><a class=\"waves-effect\" href=\"#!\"><i class=\"material-icons\">power_settings_new</i>Logout</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <ul class=\"side-nav\" id=\"mobile-demo2\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <div class=\"userView\">\r\n");
      out.write("                                <div class=\"background\">\r\n");
      out.write("                                    <img src=\"\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <a href=\"#!user\"><img class=\"circle\" src=\"\"></a>\r\n");
      out.write("                                <a href=\"#!name\"><span class=\"white-text name\">John Doe</span></a>\r\n");
      out.write("                                <a href=\"#!email\"><span class=\"white-text email\">jdandturk@gmail.com</span></a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li><a class=\"waves-effect\" href=\"#!\">1.article heading</a></li>\r\n");
      out.write("                        <li><a class=\"waves-effect\" href=\"#!\">2.article heading</a></li>\r\n");
      out.write("                        <li><a class=\"waves-effect\" href=\"#!\">3.article heading</a></li>\r\n");
      out.write("                        <li><a class=\"waves-effect\" href=\"#!\">4.article heading</a></li>\r\n");
      out.write("                        <li><a class=\"waves-effect\" href=\"#!\">5.article heading</a></li>\r\n");
      out.write("                        <li><a class=\"waves-effect\" href=\"#!\">6.article heading</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    <ul style=\"margin-top:67px;\" class=\"side-nav fixed\">\r\n");
      out.write("        <li>\r\n");
      out.write("            <div class=\"userView\">\r\n");
      out.write("                <div class=\"background\">\r\n");
      out.write("                    <img src=\"\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#!user\"><img class=\"circle\" src=\"\"></a>\r\n");
      out.write("                <a href=\"#!name\"><span class=\"white-text name\">John Doe</span></a>\r\n");
      out.write("                <a href=\"#!email\"><span class=\"white-text email\">jdandturk@gmail.com</span></a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li><a class=\"waves-effect\" href=\"mainpage.jsp\"><i class=\"material-icons\">dns</i>Feed</a></li>\r\n");
      out.write("        <li><a class=\"waves-effect\" href=\"Myprofile.jsp\"><i class=\"material-icons\">perm_identity</i>My Page</a></li>\r\n");
      out.write("        <li>\r\n");
      out.write("            <div class=\"divider\"></div>\r\n");
      out.write("        </li>\r\n");
      out.write("    </ul>\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("        <div class=\" side_table col s12 m12 l3\" style=\"padding-top:0px;\"> some</div>\r\n");
      out.write("        <div class=\"col s12 m12 l6 teal-text\" style=\"padding-top:20px;\">\r\n");
      out.write("            <div class=\"card white \">\r\n");
      out.write("                <div class=\"card-content gray-text \">\r\n");
      out.write("                    <span class=\"card-title \">Posted by #someone</span>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</li>\r\n");
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card white \">\r\n");
      out.write("                <div class=\"card-content gray-text \">\r\n");
      out.write("                    <span class=\"card-title \">Posted by #someone</span>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</li>\r\n");
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card white \">\r\n");
      out.write("                <div class=\"card-content gray-text \">\r\n");
      out.write("                    <span class=\"card-title \">Posted by #someone</span>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</li>\r\n");
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"side_table col l3 \" style=\"padding-top:20px;\">\r\n");
      out.write("            <div class=\"card white\" style=\"position:fixed; margin-right:10px;\">\r\n");
      out.write("                <div class=\"card-content teal-text\">\r\n");
      out.write("                    <span class=\"card-title\">Trending Articles</span>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>text</li>\r\n");
      out.write("                        <li>text</li>\r\n");
      out.write("                        <li>text</li>\r\n");
      out.write("                        <li>text</li>\r\n");
      out.write("                        <li>text</li>\r\n");
      out.write("                        <li>More</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card-action\">\r\n");
      out.write("                    <a href=\"#\">View All</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-2.1.1.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/myscript.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
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
