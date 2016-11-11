<%-- 
    Document   : mainpage
    Created on : 9 Nov, 2016, 11:25:43 PM
    Author     : dbhrockzz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>

<head>
    <title>Main Page</title>
    <link rel="stylesheet" type="text/css" href="mainpage.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<style>
    
    
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

<body>
    <jsp:include page="header.jsp" />
    <jsp:include page="sidenav.jsp" />
    
    <div class="row">
        <div class=" side_table col s12 m12 l3" style="padding-top:0px;"> some</div>
        <div class="col s12 m12 l6 teal-text" style="padding-top:20px;">
            <div class="card white ">
                <div class="card-content grey-text text-darken-1">
                    <span class="card-title ">Posted by #someone</span>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                        
                        
                    </p>
                </div>
            </div>
            <div class="card white ">
                <div class="card-content grey-text text-darken-1">
                    <span class="card-title ">Posted by #someone</span>
                    <ul>
                        <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                        </li>
                        <br>
                        <li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</li>

                    </ul>
                </div>
            </div>
            <div class="card white ">
                <div class="card-content grey-text text-darken-1 ">
                    <span class="card-title ">Posted by #someone</span>
                    <ul>
                        <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                        </li>
                        <br>
                        <li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="side_table col l3 " style="padding-top:20px;">
            <div class="card white" style="position:fixed; margin-right:10px;">
                <div class="card-content teal-text">
                    <span class="card-title">Trending Articles</span>
                    <ul>
                        <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
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
</body>

</html>