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
</style>

<body>
    <jsp:include page="header.jsp" />  
    <ul style="margin-top:67px;" class="side-nav fixed">
        <li>
            <div class="userView">
                <div class="background">
                    <img src="">
                </div>
                <a href="#!user"><img class="circle" src=""></a>
                <a href="#!name"><span class="white-text name">John Doe</span></a>
                <a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a>
            </div>
        </li>
        <li><a class="waves-effect" href="mainpage.jsp"><i class="material-icons">dns</i>Feed</a></li>
        <li><a class="waves-effect" href="Myprofile.jsp"><i class="material-icons">perm_identity</i>My Page</a></li>
        <li>
            <div class="divider"></div>
        </li>
    </ul>
    <div class="row">
        <div class=" side_table col s12 m12 l3" style="padding-top:0px;"> some</div>
        <div class="col s12 m12 l6 teal-text" style="padding-top:20px;">
            <div class="card white ">
                <div class="card-content gray-text ">
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
                <div class="card-content gray-text ">
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
                <div class="card-content gray-text ">
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