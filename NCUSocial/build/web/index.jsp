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
	    <style>
		 @media only screen and (min-width :600px){
		      .welcome,.login{
			   height: 100%;
		      }
		 }
		 
	    </style>
        </head>

        <body style="height:100%;">
            <div class="row left-align" style="margin-bottom:0px;">
                <!--container is added -->
                <div id="welcome" class="welcome col s12 m8 l8 flow-text" style="padding:0px 50px 0px 50px;">
                    <!--Welcome column-->
                    <h2 class="wel_head" style="padding:30px 0px 0px 0px;">Welcome to our community</h2>
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
                                        <span style="color:white">Registered Successfully</span>
                                    </div>
                                    
                                    <%
                              }
                              %>

                                        <%  
                              if(request.getAttribute("signupResult")!=null && request.getAttribute("signupResult")=="true"){
                              %>
                                            <div>
                                                <span style="color:white">User Already Exists or Problem in Registration</span>
                                            </div>
                                            
                                            <%

                              }
                              %>

                                <label>
                                <input style="padding-top:15px;font-size:20px;" type="submit" id="signupbtn" class="waves-effect white teal-text btn-large " value="Sign Up">
                                </label>
                              </div>
                        </form>
                        
                    </div>
                </div>
                <div class="login col s12 m4 l4" style="padding:0px 50px 0px 50px;">
                    <!--login column-->
                    <h4 class="grey-text text-darken-1" style="padding:130px 0px 20px 0px;">Or let's resume</h4>
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
                                <span style="color:red;font-size: 20px;">Wrong Username or Password</span>
                            </div>
                            <%
                    }
                %>
                                <br>
                                <label>
                                    <input style="padding-top:15px;font-size:20px;" type="submit" id="loginbtn" class="waves-effect btn-large center-align flow-text" value="Login">
                                </label>
				<br>
				<br>
                                <a style="font-size:18px; " href="" class="grey-text text-darken-1">Forgot Password ?</a>
                    </form>
                </div>
            </div>
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
            <script type="text/javascript" src="js/materialize.min.js"></script>
	    <script type="text/javascript" src="js/myscript2.js"></script>
        </body>

        </html>