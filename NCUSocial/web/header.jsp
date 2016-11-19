<%-- 
    Document   : header
    Created on : Nov 10, 2016, 8:50:18 PM
    Author     : Aashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="classes.userClass.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/headerstyle.css" type="text/css" rel="stylesheet">
    </head>
    <body>
<!--        <script> 
    function preventBack(){
        window.history.forward();
    } 
    setTimeout("preventBack()", 0);  window.onunload=function(){null}; 
    </script>-->
    <%
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
	classes.userClass u = new classes.userClass(userName);
    %>
    <header class="flow-text">
        <!--navigation bar-->
	<form action="logoutservlet" method="POST" id="logout">
        <ul id="dropdown1" class="dropdown-content">
            
<!--	    <li><a href="#!">Security</a></li>-->
            <li>
                <a href="#!">Change Password</a>
            </li>
            <li class="divider"></li>
            
                <li><a href="javascript:{}" onClick="document.getElementById('logout').submit();">Log Out</a></li>
        </ul>
          </form>

	  <div class="navbar-fixed">
            <nav>
                <div class="nav-wrapper">
                    <div class="row">
                        <a href="#" class="brand-logo">NCU Learn</a>
                        <div class="col s10 m10 "><a href="#" data-activates="mobile-demo1" class="button-collapse"><i class="material-icons">menu</i></a></div>
                        <div class="col s2 m2 "><a href="#" data-activates="mobile-demo2" class="button-collapse"><i class="material-icons">trending_up</i></a></div>
                    </div>

                    

                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a class="dropdown-button white-text" href="#!" data-activates="dropdown1">Hi <%= u.getName() %></a></li>
                    </ul>
                    <ul class="side-nav" id="mobile-demo1">
                        <li>
                            <div class="userView">
                                <div class="background">
                                    <img src="http://htmlcolorcodes.com/assets/images/html-color-codes-color-tutorials-hero-00e10b1f.jpg">
                                </div>
                                <a href="#!user"><img class="circle" src="https://www.drupal.org/files/issues/user_5.png"></a>
                                <a href="#!name"><span class="white-text name"><%= u.getName() %></span></a>
                                <a href="#!email"><span class="white-text email"><%= u.getEmail() %></span></a>
                            </div>
                        </li>
                        <li><a class="waves-effect" href="mainpage.jsp"><i class="material-icons">dns</i>Feed</a></li>
                        <li><a class="waves-effect" href="Myprofile.jsp"><i class="material-icons">perm_identity</i>My Page</a></li>
                        <li><a href="Upload.jsp" class="waves-effect"><i class="material-icons">open_in_new</i>Upload</a></li>
			<li>
                            <div class="divider"></div>
                        </li>

                        <li><a class="waves-effect" href="#!"><i class="material-icons">power_settings_new</i>Logout</a></li>
                    </ul>
                    <ul class="side-nav" id="mobile-demo2">
                        <li>
                            <div class="userView">
                                <div class="background">
                                    <img src="http://htmlcolorcodes.com/assets/images/html-color-codes-color-tutorials-hero-00e10b1f.jpg">
                                </div>
                                <a href="#!user"><img class="circle" src="https://www.drupal.org/files/issues/user_5.png"></a>
                                <a href="#!name"><span class="white-text name">John Doe</span></a>
                                <a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a>
                            </div>
                        </li>
                        <li><a class="waves-effect" href="#!">1.article heading</a></li>
                        <li><a class="waves-effect" href="#!">2.article heading</a></li>
                        <li><a class="waves-effect" href="#!">3.article heading</a></li>
                        <li><a class="waves-effect" href="#!">4.article heading</a></li>
                        <li><a class="waves-effect" href="#!">5.article heading</a></li>
                        <li><a class="waves-effect" href="#!">6.article heading</a></li>
                    </ul>
                </div>
            </nav>

        </div>
    </header>
              
    </body>
</html>
