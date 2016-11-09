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
    <style>
        @media screen and (min-width: 480px) {
            .welcome {
                height: 453.22px;
            }
            .login {
                height: 453.22px;
            }
        }
        
        .login {
            height: 100%;
        }
        
        .welcome {
            background-color: #01c7b6;
            color: white;
            height: 100%;
        }
    </style>
</head>

<body style="height:100%;">
    <div class="row" style="margin-bottom:0px;">
        <!--container is added -->
        <div class="welcome col s12 m7 l7" style="padding:0px 50px 0px 100px;">
            <!--Welcome column-->
            <h1 class="wel_head" style="font-size:40px;padding:80px 0px 0px 0px;">Welcome to our community</h1>
            <h2 style="font-size:30px;">New here? Why not register yourself</h2>
            <p>Lorem ipsum dolor sit amet, quo doctus laoreet no, sea no malis simul sententiae, qui ex duis harum. Amet doming tincidunt at pri, cu has nisl omittam convenire, an nostro intellegam eloquentiam quo. Ius iusto invenire cu, wisi rationibus
                te per. Ut duo habemus nominati suscipiantur, sit ad alia abhorreant. Nonumy singulis vulputate id ius. Vel ex corpora qualisque constituam, detracto delicata inciderint ne mea.</p>
            <a href="register.html" class=" waves-effect waves-light btn-large white teal-text waves-teal">Register</a>
        </div>
        <div class="login col s12 m5 l4" style="padding:0px 50px 0px 100px;">
            <!--login column-->
            <h1 style="font-size:40px;color:gray;padding:80px 0px 0px 0px;">Or let's resume</h1>
            <form action="login" method="POST" id="login_form">
                <!--login form -->
                <div class="input-field">
                    <input type="text" name="Username" value="" id="Username">
                    <label for="Username">Username</label>
                </div>
                <div class="input-field">
                    <input type="password" name="Password" value="" id="Password">
                    <label for="Password">Password</label>
                </div>
                <br>
                <a href="javascript:{}" onclick="document.getElementById('login_form').submit();" class="waves-effect waves-light btn">Log in</a>
            </form>
        </div>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
</body>

</html>