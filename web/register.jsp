<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.util.Date, java.util.*, java.text.*, java.text.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<%@ include file="head.jsp"%>

<title>Untitled Document</title>

<style>

@font-face {
			  font-family: 'Gotham';
			  src: url("assets/fonts/Gotham-Book.ttf"),
				   url("assets/fonts/Gotham-Medium.ttf");
			  
     	}
		
.centered{
		color:#936444; 
		font-family:'Gotham', Gotham-Medium;
		letter-spacing:5px;
		}

body, html{
    height: 100%;
 	background-repeat: no-repeat;
}

.main{
 	margin-top: 70px;
}

h1.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
}

hr{
	width: 10%;
	color: #fff;
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
    font-size: 11px;
    padding-top: 3px;
}

.main-login{
 	background: rgba(255, 255, 255, .5);
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 400px;
    padding: 40px 40px;

}

.login-button{
	margin-top: 5px;
}

.login-register{
	font-size: 11px;
	text-align: center;
}



</style>

</head>



<body>
		<%@ include file="navbar.jsp"%>

		
		<div style="margin-bottom:50px; background-image:url(assets/img/bbb.jpg); background-size:cover; height:1300px;">
			<div class="row main" style="height:1000px;">
				<div class="main-center" style="margin-top:350px;">
					<form class="form-horizontal" method="post" action="helper/doRegister.jsp">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>
                        
                        <div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Phone</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="phone" id="phone"  placeholder="Enter your phone"/>
								</div>
							</div>
						</div>
                        
                        <div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Birthdate</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-calendar fa" aria-hidden="true"></i></span>
									<input type="date" class="form-control" name="date" id="date"/>
								</div>
							</div>
						</div>

						

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Register">
						</div>
						<div class="login-register">
				            <a href="index.jsp">Login</a>
				         </div>
					</form>
				</div>
			</div>
		</div>
        
        <%@ include file="footer.jsp"%>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	

	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
       
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>
</body>
</html>
