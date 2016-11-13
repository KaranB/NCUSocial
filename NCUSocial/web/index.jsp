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
            <script>
                function editNodeText(regex, input) {
                    if (!regex.test(input)) {
                        alert("Please enter a valid email");
                        return false;

                    } else {
                              return true;}
                }

                function validatelogin() {
                    if (document.loginform.Username.value === null || document.loginform.Username.value === "" || document.loginform.Password.value === null || document.loginform.Password.value === "") {
                        alert("Please enter all the credentials");
                        return false;
                    } else
                        return true;

                }

                var Emailreg = document.signupform.email.value;

                function validatesignup() {
                    return editnodeText(/^[A-Za-z0-9._-]+@ncuindia.edu$/, Emailreg);
                }
            </script>
        </head>

        <body style="height:100%;">
            <div class="row flow-text" style="margin-bottom:0px;">
                <!--container is added -->
                <div id="welcome" class="welcome col s12 m8 l8" style="padding:0px 50px 0px 50px;">
                    <!--Welcome column-->
                    <h2 class="wel_head" style="padding:30px 0px 0px 0px;">Welcome to our community</h2>
                    <h4>New here? Why not register yourself</h4>
                    <div id="Sign_up" class="row">
                        <form id="signup" action="signup" method="POST" name="signupform" onsubmit="return validatesignup()">
                            <div class="col s8 m8 l6">
                                <div class="input-field">
                                    <input type="text" name="name" id="First_name" required>
                                    <label for="name">Name</label>
                                </div>
                                <div class="input-field">
                                    <input type="text" name="email" id="Email_id" required>
                                    <label for="Email_id">Email id </label>
                                </div>
                                <div class="input-field">
                                    <input type="password" name="pass" id="Password" required>
                                    <label for="Password">Password</label>
                                </div>
                                <br>
                                <%  
                        if(request.getAttribute("signupResult")!=null && request.getAttribute("signupResult")=="false"){
                        %>
                                    <div>
                                        <span style="color:white">Registered Successfully</span>
                                    </div>
                                    <%
                        }
                    %>
                                        <input style="padding-top:15px;font-size:20px;" type="submit" id="loginbtn" class="waves-effect white teal-text btn-large " value="Sign Up">
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
                                <span style="color:red">Wrong Username or Password</span>
                            </div>
                            <%
                    }
                %>
                                <br>
                                <input style="padding-top:15px;font-size:20px;" type="submit" id="loginbtn" class="waves-effect btn-large center-align" value="submit">
                                <a style="padding-left:20px;font-size:18px; " href="" class="tooltipped grey-text text-darken-1" data-position="bottom" data-delay="10" data-tooltip="Happens often">Forgot Password ?</a>
                    </form>
                </div>
            </div>
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
            <script type="text/javascript" src="js/materialize.min.js"></script>
        </body>

        </html>