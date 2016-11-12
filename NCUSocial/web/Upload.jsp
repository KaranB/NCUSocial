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
            <jsp:include page="header.jsp" />
            <jsp:include page="sidenav.jsp" />
            <div class="row">
                <div class=" side_table col s12 m12 l3" style="padding-top:0px;"> </div>
                <div class="col s12 m12 l6 grey-text text-darken-1" style="padding-top:11px;">

                    <div class="card white grey-text text-darken-1 ">
                        <div class="row" style="padding-left:20px;">
                            <h4 style="padding:20px 0px 0px 10px;">Article Upload</h4>
                            <br>
                            <form>
                                <div class="col s8 m8 l6">
                                    <div class="input-field">
                                        <input type="text" id="article_name" />
                                        <label for="article_name">Title</label>
                                    </div>
                                    <br>
                                    <div class="input-field">
                                        <select id="selection_drop">
                                <option value="1">Option 1</option>
                                <option value="2">Option 2</option>
                                <option value="3">Option 3</option>
                                <option value="3">Opt   ion 4</option>
                                <option value="3">Option 5</option>
                                </select>
                                        <label for="selection_drop">Article category</label>
                                    </div>
                                </div>

                                <div class="col s11 m11 l11">
                                    <div class="input-field">
                                        <textarea id="textarea1" class="materialize-textarea" length="500"></textarea>
                                        <label for="textarea1">Content</label>
                                    </div>

                                    <div style="padding-bottom:20px;" class="file-field input-field">
                                        <div class="btn">
                                            <span>File</span>
                                            <input type="file">
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text">
                                        </div>
                                    </div>
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