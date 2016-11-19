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
     </head>
     <body>
	  <jsp:include page="header.jsp" />
	  <jsp:include page="sidenav.jsp" />
	  
	  <div class="row">
	       <div class="col s12 m12 l3"> </div>
	       <div class="main_con col s12 m12 l6 grey-text text-darken-1" >
		   <div class="card white grey-text text-darken-1 ">
                       <div class="row" style="padding-left:20px;">
			     <h4 class="arti_head">Change Password</h4>
                            <br>
                            <form>
                                <div class="col s8 m8 l6">
                                    <div class="input-field">
                                        <input type="text" id="Old_pass" />
                                        <label for="Old_pass">Old Password</label>
                                    </div>
                                    <br>
                                    <div class="input-field">
                                        <input type="text" id="New_pass" />
                                        <label for="New_pass">New Password</label>
                                    </div>
                                    <br>
				    <div class="input-field">
                                        <input type="text" id="Con_new_pass" />
                                        <label for="Con_new_pass">Confirm New Password</label>
                                    </div>
                                    <br>
				    <div id="sub_div">
					<label id="sub_label">
					<input type="submit" id="submitbtn" class="waves-effect btn-large center-align flow-text" value="Submit">
					</label>
				    </div>
                                </div>
                            </form>
                        </div>
                    </div>
	       </div>
	       <div class="side_table col l3 ">
                    <div class="trend card white">
			 <jsp:include page="Trending.jsp"></jsp:include>
                    </div>
               </div>
	   </div>
	  
	  
	  
	  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	  <script type="text/javascript" src="js/myscript.js">
          </script>
     
     </body>
</html>
