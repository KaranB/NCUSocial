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
            <style>
                p,
                li {
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
            session.setAttribute("email", u.getEmail());
        %>
            <jsp:include page="header.jsp" />
            <jsp:include page="sidenav.jsp" />
            <div class="row">
                <div class=" side_table col s12 m12 l3" style="padding-top:0px;"> </div>
                <div class="col s12 m12 l6 grey-text text-darken-1" style="padding-top:11px;">

                    <div class="card white grey-text text-darken-1 ">
                        <div class="row" style="padding-left:20px;">
                            <h4 style="padding:20px 0px 0px 10px;">Article Upload</h4>
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

                                <div class="col s11 m11 l11">
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
                                    <% } %>
				    <label>
                                    <input style="padding-top:5px;margin-bottom: 20px;font-size:20px;" type="submit" id="submitbtn" class="waves-effect btn-large center-align flow-text" value="Submit">
				   </label>
				   
                                </div>
                                
                            </form>
                        </div>
                    </div>

                </div>
                <div class="side_table col l3 " style="padding-top:20px;">
                    <div class="card white" style="position:fixed; margin-right:10px;">
                        <div class="card-content teal-text">
                            <span class="card-title">Trending Articles</span>
                            <ul>
                                <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                    consequat.
                                </li>
                                <li>text</li>
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
            <script type="text/javascript" src="js/myscript.js">
            </script>
        </body>

        </html>