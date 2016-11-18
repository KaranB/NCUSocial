<%-- 
    Document   : index
    Created on : 9 Nov, 2016, 10:41:34 PM
    Author     : dbhrockzz
--%>
    <%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE>
        <html>

        <head>
            <title>Welcome to NCUSocial</title>
            <link rel="stylesheet" type="text/css" href="css/materialize.css">
            <link rel="stylesheet" type="text/css" href="css/indexstyle.css">
        </head>

        <body>
            <div class="main_div row left-align">
                <!--container is added -->
                <div id="welcome" class="welcome col s12 m8 l8 ">
                    <!--Welcome column-->
                    <h2 class="wel_head">Welcome to our community</h2>
                    <h4 >New here? Why not register yourself</h4>
                    <div id="Sign_up" class="row">

                        <form id="signup" action="signup" method="POST">
                            <div class="col s8 m8 l6">

                                <div class="input-field">
                                    <input type="text" name="name" value="" id="name" required>
                                    <label for="name">Name</label>
                                </div>
                                <div class="input-field">
                                    <input type="text" name="email" value="" id="Email" onblur="validatesignup(this);" required>
                                    <label for="email">Email id </label>
                                </div>

                                <div class="input-field">
                                    <input type="password" name="pass" value="" id="password" required>
                                    <label for="Password">Password</label>
                                </div>
                                
                                <%  
                              if(request.getAttribute("signupResult")!=null && request.getAttribute("signupResult")=="false"){
                               %>
                                    <div >
                                        <span class="white-text">Registered Successfully</span>
                                    </div>
                                    
                                    <%
                              }
                              %>

                                        <%  
                              if(request.getAttribute("signupResult")!=null && request.getAttribute("signupResult")=="true"){
                              %>
                                            <div>
                                                <span class="white-text" >User Already Exists or Problem in Registration</span>
                                            </div>
                                            
                                            <%

                              }
                              %>

                                <label>
                                <input type="submit" id="signupbtn" class="waves-effect white teal-text btn-large " value="Sign Up">
                                </label>
                              </div>
                        </form>
                        
                    </div>
                </div>
                <div class="login col s12 m4 l4">
                    <!--login column-->
                    <h4 class="login_head grey-text text-darken-1">Or let's resume</h4>
                    <form action="login" method="POST" id="login_form" name="loginform" onsubmit="return validatelogin()">
                        <!--login form -->
                        <div class="input-field">
                            <input type="text" name="Username" value="" id="Username" required>
                            <label for="Username">Username</label>
                        </div>
                        <div class="input-field">
                            <input type="password" name="Password" value="" id="Password" required>
                            <label for="Password">Password</label>
                        </div>
                        <%  
                    if(  request.getAttribute("loginResult")=="true"&&request.getAttribute("loginResult")!=null){
                %>
                            <div>
                                <span class="red-text">Wrong Username or Password</span>
                            </div>
                            <%
                    }
                %>
                                <br>
                                <label>
                                    <input type="submit" id="loginbtn" class="waves-effect btn-large center-align flow-text" value="Login">
                                </label>
				<br>
				<br>
                                <a href="" class="forgot grey-text text-darken-1">Forgot Password ?</a>
                    </form>
                </div>
            </div>
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
            <script type="text/javascript" src="js/materialize.min.js"></script>
	    <script type="text/javascript" src="js/myscript2.js"></script>
        </body>

        </html>