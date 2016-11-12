<%-- 
    Document   : sidenav
    Created on : Nov 11, 2016, 11:34:49 PM
    Author     : Aashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul style="margin-top:67px;" class="side-nav fixed">
        <li>
            <div class="userView">
                <div class="background">
                    <img src="">
                </div>
                <a href="#!user"><img class="circle" src=""></a>
                <a href="#!name"><span class="name"> ${user.getName()} </span></a>
                <a href="#!email"><span class="email"> ${user.getEmail()} </span></a>
            </div>
        </li>
        <li><a class="waves-effect"><i class="material-icons">dns</i>Feed</a></li>
        <li><a class="waves-effect"><i class="material-icons">perm_identity</i>My Page</a></li>
        <li><a class="waves-effect"><i class="material-icons">open_in_new</i>Upload</a></li>
        
        <li>
            <div class="divider"></div>
        </li>
    </ul>
    </body>
</html>
