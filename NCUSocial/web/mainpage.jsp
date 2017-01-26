<%-- 
    Document   : mainpage
    Created on : 9 Nov, 2016, 11:25:43 PM
    Author     : dbhrockzz
--%>

<%@page import="dbase.article"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbase.article.*"%>
<%@page import="classes.articleClass.*"%>
        <!DOCTYPE>
        <html>

        <head>
            <title>Main Page</title>
            <link rel="stylesheet" type="text/css" href="css/mainpagestyle.css">
            <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	    <style>
		 @media only screen and (min-width: 990px){
		    main{
			 padding-left: 260px;
		    }
		    .row .col.l9 {
			 padding-right: 0px !important;
		    }

	       } 
	    </style>
	</head>
        <body class="grey lighten-4">
            <jsp:include page="header.jsp" />
            <jsp:include page="sidenav.jsp" />
	    <main>
	       <div class="row">
		    <div class="main_con col s12 m12 l9">
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

		     <div class="side_table col l3 ">
			 <div class="trend card white">
			      <jsp:include page="Trending.jsp"></jsp:include>
			 </div>
		     </div>
	       </div>
	    </main>
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	    <script type="text/javascript" src="js/myscript.js"></script>
        </body>

        </html>