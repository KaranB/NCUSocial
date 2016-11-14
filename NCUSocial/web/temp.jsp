<%-- 
    Document   : temp
    Created on : Nov 14, 2016, 9:46:12 AM
    Author     : Aashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@page import="classes.userClass.*" %>

<html>
     <head>
	  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <title>JSP Page</title>
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
	  <jsp:forward page="Myprofile.jsp">
	  <jsp:param name="Email" value="<%= u.getEmail() %>" />
	  </jsp:forward>
		  
	       
     </body>
</html>
