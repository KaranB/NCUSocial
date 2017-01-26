<%-- 
    Document   : Passwordchange
    Created on : Nov 19, 2016, 2:28:23 PM
    Author     : Aashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
	  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <link rel="stylesheet" type="text/css" href="css/Passwordchangestyle.css">
	  <title>JSP Page</title>
	  <style>
	       @media only screen and (min-width: 990px){
		    main{
			 padding-left: 260px;
		    }
		    .row .col.l9 {
			 padding-right: 0px !important;
		    }

	       } 
	  </style>
     </head>
     <body>
	  <jsp:include page="header.jsp" />
	  <jsp:include page="sidenav.jsp" />
	  <main>
	  <div class="row">
	       <div class="main_con col s12 m12 l9 grey-text text-darken-1" >
		    <h3>Settings</h3>
		    <br>
		    <ul class="collapsible" data-collapsible="accordion">
			 <li>
			   <div class="collapsible-header">Username</div>
			   <div class="collapsible-body">
				<form>
				<div class="container">
				     <div class="row">
					  <div class="col l6">
					       <br>
					     <div class="input-field">
						 <input type="text" id="new_username" />
						 <label for="new_username">Enter New Username</label>
					     </div>
					     <div id="sub_div">
						 <button class="btn waves-effect waves-light" type="submit" name="action">Submit
						 </button>
					     </div>  
					  </div>
				     </div>
				</div>
				</form>
			   </div>
			 </li>
			 <li>
			   <div class="collapsible-header">Change Password</div>
			   <div class="collapsible-body">
			      <form>
				   <div class="container">
					
				   <div class="row">
					<div class="col l6">
					     <br>
					     <div class="input-field">
						 <input type="password" id="Old_pass" />
						 <label for="Old_pass">Old Password</label>
					     </div>
					     <br>
					     <div class="input-field">
						 <input type="password" id="New_pass" />
						 <label for="New_pass">New Password</label>
					     </div>
					     <br>
					     <div class="input-field">
						 <input type="password" id="Con_new_pass" />
						 <label for="Con_new_pass">Confirm New Password</label>
					     </div>
					     <br>
					     <div id="sub_div">
						 <button class="btn waves-effect waves-light" type="submit" name="action">Submit
						 </button>
					     </div>
					</div>
				   </div>
				   </div>	
                            </form>
				
			   </div>
			 </li>
			 <li>
			   <div class="collapsible-header">Change email</div>
			   <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
			 </li>
		    </ul>
	       </div>
	       <div class="side_table col l3 ">
                    <div class="trend card white">
			 <jsp:include page="Trending.jsp"></jsp:include>
                    </div>
               </div>
	   </div>
	  
	  </main>
	  
	  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	  <script type="text/javascript" src="js/myscript.js">
          </script>
     
     </body>
</html>
