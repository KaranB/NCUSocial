<%-- 
    Document   : Editarticle
    Created on : Nov 19, 2016, 3:02:07 PM
    Author     : Aashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
	  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <title>JSP Page</title>
	  <link rel="stylesheet" type="text/css" href="css/Uploadstyle.css">
     </head>
     <body>
	  <jsp:include page="header.jsp" />
	  <jsp:include page="sidenav.jsp" />
	  <div class="row">
	      <div class="col s12 m12 l9">
		   <div class="row">
			 <div class="col s12 m12 l3"> </div>
			 <div class="main_con col s12 m12 l9 grey-text text-darken-1" >

			     <div class="card white grey-text text-darken-1 ">
				<div class="row" style="padding-left:20px;">
				      <h4 class="arti_head">Article Upload</h4>
				     <br>
				     <form>
					  <% 
					     String Usrid= session.getAttribute("UserId").toString();
					     int Userid = Integer.parseInt(Usrid);
					     if(Usrid!= null){
					     classes.articleClass obj = dbase.article.articleObj(Userid);    

					  %>
					 <div class="col s8 m8 l6">
					     <div class="input-field">
						 <input type="text" id="article_name" value="<%= obj.getTitle() %>"/>
						 <label for="article_name">Title</label>
					     </div>
					     <br>
					     <div class="input-field">
						 <select id="selection_drop">
						   <option value="some">some</option>

						 </select>
						 <label for="selection_drop">Article category</label>
					     </div>
					 </div>

					 <div class="col s11 m11 l11" id="sub_col">
					     <div class="input-field">
						 <textarea id="textarea1" class="materialize-textarea" data-length="500"><%= obj.getText() %> </textarea>
						 <label for="textarea1">Content</label>
					     </div>
					     <% } %>
					      <label id="sub_label">
					     <input type="submit" id="submitbtn" class="waves-effect btn-large center-align flow-text" value="Submit">
					    </label>

					 </div>

				     </form>
				 </div>
			     </div>

			 </div>
			
		   </div>
	      </div>
	     
	      <div class="side_table col l3 ">
		  <div class="trend card white">
		       <jsp:include page="Trending.jsp"></jsp:include>
		  </div>
	      </div>
	  </div>
	  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	  <script type="text/javascript" src="js/myscript.js">
	  </script>
     </body>
</html>
