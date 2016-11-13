<%-- 
    Document   : Myprofile
    Created on : 9 Nov, 2016, 11:02:09 PM
    Author     : dbhrockzz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>

<head>
    <title>My Profile</title>
</head>

<style>
    nav {
        background-color: #01c7b6;
        color: white;
    }
    
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

<body class="grey lighten-4">
    <%
        String userName = null;
        Cookie[] cookies = request.getCookies();
        if(cookies !=null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("user")) userName = cookie.getValue();
            }
        }
        if(userName == null) response.sendRedirect("index.jsp");    
    %>
    <jsp:include page="header.jsp" />
    <jsp:include page="sidenav.jsp" />
    
    <div class="row">
        <div class=" side_table col s12 m12 l3" style="padding-top:0px;"> </div>
        <div class="col s12 m12 l6 teal-text" style="padding-top:20px;">
                              <ul class="collection with-header">
                                  <li class="collection-header">
                                      <h4>Your Uploads</h4>
                                  </li>
                                  <li class="collection-item">
                                      <div>Alvin<a href="#!" class="secondary-content">View</a><a href="#!" class="secondary-content">Delete</a>
                                          <a href="#!" class="secondary-content">Edit</a>
                                      </div>
                                  </li>
                                  <li class="collection-item">
                                      <div>Alvin<a href="#!" class="secondary-content">View</a><a href="#!" class="secondary-content">Delete</a>
                                          <a href="#!" class="secondary-content">Edit</a>
                                      </div>
                                  </li>
                                  <li class="collection-item">
                                      <div>Alvin<a href="#!" class="secondary-content">View</a><a href="#!" class="secondary-content">Delete</a>
                                          <a href="#!" class="secondary-content">Edit</a>
                                      </div>
                                  </li>
                                  <li class="collection-item">
                                      <div>Alvin<a href="#!" class="secondary-content">View</a><a href="#!" class="secondary-content">Delete</a>
                                          <a href="#!" class="secondary-content">Edit</a>
                                      </div>
                                  </li>
                                  <li class="collection-item">
                                      <div>Alvin<a href="#!" class="secondary-content">View</a><a href="#!" class="secondary-content">Delete</a>
                                          <a href="#!" class="secondary-content">Edit</a>
                                      </div>
                                  </li>
                                  <li class="collection-item">
                                      <div>Alvin<a href="#!" class="secondary-content">View</a><a href="#!" class="secondary-content">Delete</a>
                                          <a href="#!" class="secondary-content">Edit</a>
                                      </div>
                                  </li>
                                  <li class="collection-item">
                                      <div>Alvin<a href="#!" class="secondary-content">View</a><a href="#!" class="secondary-content">Delete</a>
                                          <a href="#!" class="secondary-content">Edit</a>
                                      </div>
                                  </li>
                                  <li class="collection-item">
                                      <div>Alvin<a href="#!" class="secondary-content">View</a><a href="#!" class="secondary-content">Delete</a>
                                          <a href="#!" class="secondary-content">Edit</a>
                                      </div>
                                  </li>

                              </ul>
                          </div>
                          <div class="side_table col l3" style="padding-top:20px;">
                              <div class="card white">
                                  <div class="card-content teal-text">
                                      <span class="card-title">Trending Articles</span>
                                      <ul>
                                          <li>text</li>
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
</body>

</html>