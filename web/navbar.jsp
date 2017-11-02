
  
  <!-- navbar -->
  <nav class="navbar navbar-default" id="navbar">
  <div class="container-fluid">
    
    <div class="collapse navbar-collapse col-lg-6 col-md-6">
      <ul class="nav navbar-nav  navbar-left">
       <li><a href="index.jsp#home" class="smoothScroll"><img src="assets/img/logo-03.png" class="img-responsive"  style="width:150px;"></a></li>
      </ul>
    </div> 
    
    <div class="collapse navbar-collapse navbar-right col-lg-6 col-md-6">
      <div class="dropdown">
       <ul class="nav navbar-nav pull-right">
		<li>
                    <%
                        if(session.getAttribute("user")== null)
                        {
                    %>
                    <a href="index.jsp#home" class="smoothScroll hvr-underline-from-center" style="color:#000000"> Welcome</a>
                    <%
                        }
                        else
                        {
                    %>
                    <a href="userprofile.jsp" class="smoothScroll hvr-underline-from-center" style="color:#000000"> Profile</a>
                    <%
                        }
                    %>
                </li>
        <%
			if(session.getAttribute("user") == null)
			{
		%>
        <li><a data-toggle="modal" data-target="#login-modal" style="color:#000000" class="hvr-underline-from-center" href="#login-modal"> Sign In</a></li>
                 
		<%
            }
            else if(session.getAttribute("userPosition").equals("User") || session.getAttribute("userPosition").equals("Admin"))
            {
        %>
        <li><a class="hvr-underline-from-center"  style="color:#000000" href="helper/doLogout.jsp"> Sign Out</a></li>
         <%
			}
		%>
	   </ul>
      </div>
    </div> 
   
   <!-- Sign In -->
   		<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
                	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
                    <br>
					<h1 style="font-family: 'Gotham';">Login</h1><br>
				  <form method="GET" action="helper/doLogin.jsp">
					<input type="text" name="username" placeholder="Email">
					<input type="password" name="password" placeholder="Password">
					<input type="submit" name="login" class="login loginmodal-submit" value="Login">
				  </form>
					
				  <div class="login-help"> 
					<a href="register.jsp">Sign up?</a> &nbsp; &nbsp; &nbsp;<a href="#">Forgot Password</a>
				  </div>
				</div>
			</div>
		  </div>
   <!-- /Sign In -->                

    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target="#mainNav">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

    </div>
  </div>
  
  <div class="row">
    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
      <div class="collapse navbar-collapse" id="mainNav">
        <ul id="navlist" class="nav-justified">
          <li style="text-align:center;"><a href="index.jsp#jobs" class="smoothScroll hvr-underline-from-center" style="color:#000000;">Jobs</a></li>
          <li style="text-align:center;"> <a href="index.jsp#about" class="smoothScroll hvr-underline-from-center" style="color:#000000;"> About Us</a></li>
          <li style="text-align:center;"> <a href="index.jsp#values" class="smoothScroll hvr-underline-from-center" style="color:#000000;"> Values</a></li>
          <li style="text-align:center;"> <a href="#contact" class="smoothScroll hvr-underline-from-center" style="color:#000000;"> Contact</a></li>
          <li style="text-align:center;"> <a href="content.jsp" class="smoothScroll hvr-underline-from-center" style="color:#000000;"> Student Program</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>