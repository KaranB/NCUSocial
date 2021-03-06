<%-- 
    Document   : sidenav
    Created on : Nov 11, 2016, 11:34:49 PM
    Author     : Aashish
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbase.*"%>
<%@page import="classes.userClass.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
	<script type="text/javascript" src="js/myscript.js"></script>
    </head>
    <body>
	 <%
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
	 
        <ul style="margin-top:65px;" class="side-nav fixed">
        <li>
            <div class="userView">
                <div class="background">
                    <img src="images/yVTC511.jpg">
                </div>
                <a href="#!user"><img class="circle" src="https://pbs.twimg.com/profile_images/507448828878798848/BAL8BMeT_400x400.jpeg"></a>
                <a href="#!name"><span class="name"> <%= u.getName() %> </span></a>
                <a href="#!email"><span class="email"> <%= u.getEmail() %>  </span></a>
            </div>
        </li>
        <li><a href="mainpage.jsp" class="waves-effect"><i class="material-icons">dns</i>Feed</a></li>
        <li><a href="Myprofile.jsp" class="waves-effect"><i class="material-icons">perm_identity</i>My Page</a></li>
	
        <li><a href="Upload.jsp" class="waves-effect"><i class="material-icons">open_in_new</i>Upload</a></li>
        
        <li>
            <div class="divider"></div>
        </li>
    </ul>
	    
    </body>
    
</html>
