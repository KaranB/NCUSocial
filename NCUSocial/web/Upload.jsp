<%-- 
    Document   : Upload
    Created on : Nov 11, 2016, 11:47:11 PM
    Author     : Aashish
--%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Upload</title>
	    <link rel="stylesheet" type="text/css" href="css/Uploadstyle.css">
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
            session.setAttribute("email", u.getEmail());
        %>
            <jsp:include page="header.jsp" />
            <jsp:include page="sidenav.jsp" />
            <div class="row">
                <div class="col s12 m12 l3"> </div>
                <div class="main_con col s12 m12 l6 grey-text text-darken-1" >

                    <div class="card white grey-text text-darken-1 ">
                        <div class="row" style="padding-left:20px;">
			     <h4 class="arti_head">Article Upload</h4>
                            <br>
                            <form method ="POST" action="upload">
                                <div class="col s8 m8 l6">
                                    <div class="input-field">
                                        <input type="text" id="article_name" name="title"/>
                                        <label for="article_name">Title</label>
                                    </div>
                                    <br>
                                    <div class="input-field">
                                        <select id="selection_drop" name="category">
                                            <%  Integer[] ids = dbase.category.categoriesId(); 
                                                if(ids!=null){
                                                    for(int id: ids)
                                                    {
                                                        classes.categoryClass obj = dbase.category.sendObj(id);
                                            %>
                                            
                                                
                                                        <option value="<%= obj.getId() %>"><%= obj.getName() %></option>
                                            <% }} %>
                                        </select>
                                        <label for="selection_drop">Article category</label>
                                    </div>
                                </div>

                                <div class="col s11 m11 l11" id="sub_col">
                                    <div class="input-field">
                                        <textarea id="textarea1" class="materialize-textarea" data-length="500" name="text"></textarea>
                                        <label for="textarea1">Content</label>
                                    </div>
                                    <%
                                    if(request.getAttribute("articleStatus")!=null && request.getAttribute("articleStatus")=="true")
                                    {
                                        
                                    %>
                                    <div>
                                        Article Added Successfully
                                    </div>
                                    <br>
                                    <% } %>
                                    <% 
                                        if(request.getAttribute("articleStatus")!=null && request.getAttribute("articleStatus")=="false")
                                        {

                                    %>
                                    <div>
                                        Unable to Add Article
                                    </div>
                                    <br>
				     <label id="sub_label">
                                    <input type="submit" id="submitbtn" class="waves-effect btn-large center-align flow-text" value="Submit">
				   </label>
				   
                                </div>
                                
                            </form>
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