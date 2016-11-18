<%-- 
    Document   : Myprofile
    Created on : 9 Nov, 2016, 11:02:09 PM
    Author     : dbhrockzz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.*;" %>

<!DOCTYPE>
<html>

<head>
    <title>My Profile</title>
    <link rel="stylesheet" type="text/css" href="css/Myprofilestyle.css">
</head>

<body class="grey lighten-4">
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
    <jsp:include page="header.jsp" />
    <jsp:include page="sidenav.jsp" />
    
    <div class="row">
	 <div class="col s12 m12 l3"> </div>
	 <div class="main_con col s12 m12 l6 teal-text">
	      <form class="card white" action="#">
		   <div class="card-content">
			 <h4>Your Uploads</h4>

			 <div>
			      <input  id="checkall" type="checkbox" >
			      <label id="for_checkall" for="checkall"></label>
			      
			      <a id="rmvBtn" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">delete</i></a>
        
			     
			 </div>

			 
			 <br>


			  <table>
			       <thead>
				 <tr>
				     <th data-field="id">ID</th>
				     <th data-field="name">TITLE</th>
				     <th data-field="price"></th>
				 </tr>
			       </thead>

			       <tbody>
				<%
				    Integer[] IDs= u.articles();
				    if(IDs!=null){
				    for(int ids: IDs){

				    classes.articleClass obj = dbase.article.articleObj(ids);
				 %>
				 <tr>
				      <td><input type="checkbox" name="test[]" id="one"><label for="one"><%= ids %></label></td>
				   <td><%= obj.getTitle() %> </td>
				   <td><a href="#!" class="secondary-content"><i class="material-icons">mode_edit</i></a><a href="#!" class="secondary-content"><i class="material-icons">visibility</i></a></td>
				 </tr>
				 <%
				    }}
			       %>
			       </tbody>
			  </table>

		   </div>
		   
	      </form>
	  </div>
	  <div class="side_table col l3">
	      <div class="trend card white">
		   <jsp:include page="Trending.jsp"></jsp:include>
	      </div>
        </div>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
    <script type="text/javascript" src="js/myscript.js"></script>
    
</body>

</html>