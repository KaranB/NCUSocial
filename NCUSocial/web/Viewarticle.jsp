<%-- 
    Document   : Viewarticle
    Created on : Nov 16, 2016, 9:55:56 AM
    Author     : Aashish
--%>

<%@page import="dbase.article"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbase.article.*"%>
<%@page import="classes.articleClass.*"%>
<!DOCTYPE html>
<html>
     <head>
	  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <title>JSP Page</title>
     </head>
     <body class="grey lighten-4">
	  <jsp:include page="header.jsp" />
	   <jsp:include page="sidenav.jsp" />
	   <div class="row">
	       <div class="col s12 m12 l3"> </div>
	       <div class="main_con col s12 m12 l6 grey-text text-darken-1" >
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
			     <span class="card-title " style="font-size:20px;">Posted by <%= obj.publisher.getName() %> on #date</span>
                            <p>
                                <%= obj.getText() %>
                            </p>
                        </div>
                        
                    </div>
                <% }} %>
	       </div>
	       <div class="side_table col l3 ">
                    <div class="trend card white">
			 <jsp:include page="Trending.jsp"></jsp:include>
                    </div>
               </div>
	   </div>
	   <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
           <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
     </body>
</html>
