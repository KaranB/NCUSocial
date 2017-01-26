<%-- 
    Document   : TrendingPage
    Created on : Jan 26, 2017, 4:04:14 AM
    Author     : Aashish
--%>
<%@page import="dbase.article"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
	  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <title>Trending Articles</title>
     </head>
     <body class="grey lighten-4">
	  <jsp:include page="header.jsp" />
          <jsp:include page="sidenav.jsp" />
	  
	  <div class="row">
	       <div class="col s12 m12 l3"></div>
	       <div class="main_con col s12 m12 l8">
	    
	       <% 
		   Integer[] ids = article.allArticles();
		   if(ids!=null){
		   for(int id: ids)
		   {
		       classes.articleClass obj = dbase.article.articleObj(id);

	       %>
		   <div class="card">
		       <div class="card-content grey-text text-darken-1">
			   <h4><%= obj.getTitle() %></h4>
			   <span class="card-title " style="font-size:15px;">Posted by <i><b><%= obj.publisher.getName() %></b></i> on <%= obj.getDate() %></span>
			   <p>
			       <%= obj.getText() %>
			   </p>
		       </div>
		       <div class="card-action">
			   <a href="Viewarticle.jsp">View</a>
			   <% session.setAttribute("UserId",id); %>
		       </div>
		   </div>
	       <% }} %>
	       
	       </div>
	  </div>
	  
	  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	  <script type="text/javascript" src="js/myscript.js">
	  </script>
	  <script type="text/javascript">
	       var options=[
		    {
			 selector:"#staggerd", offset:50,callback:function(el){
			      Materialize.showStaggeredList($(el));
			 }
		    }
	       ];
	       Materialize.scrollFire(options);
	  </script>
     </body>
</html>
