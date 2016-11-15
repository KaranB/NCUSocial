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
    <style>
    nav {
        background-color: #01c7b6;
        color: white;
    }
    
    @media only screen and (max-width: 990px) {
        .side_table {
            display: none;
        }
    }
    
    a {
        padding-right: 15px;
    }
    p,li{
        font-size: 17px;
    }
    
</style>
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
	 <div class=" side_table col s12 m12 l3" style="padding-top:0px;"> </div>
	 <div class="col s12 m12 l6 teal-text" style="padding-top:20px;">
	      <form class="card white" action="#">
		   <div class="card-content">
			 <h4>Your Uploads</h4>

			 <div>
			      <input  id="checkall" type="checkbox" >
			      <label style="margin-left:5px;" for="checkall"></label>
			      
			      <a id="rmvBtn" style="position:absolute;display: inline-block;top: 70px;right: 30px;" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">delete</i></a>
        
			     
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
	  <div class="side_table col l3" style="padding-top:20px;">
	      <div class="card white">
		  <div class="card-content teal-text">
		      <span class="card-title">Trending Articles</span>
		      <ul>
			  <li>text</li>
			  <li>text</li>
			  <li>text</li>
			  <li>text</li>
			  <li>text</li>
			  <li>text</li>
			  <li>More</li>
		      </ul>
		  </div>
		  <div class="card-action">  
		      <a href="#">View All</a>
		  </div>
	      </div>
        </div>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
    <script type="text/javascript" src="js/myscript.js"></script>
    
</body>

</html>