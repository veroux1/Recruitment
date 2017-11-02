<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.util.Date, java.util.*, java.text.*, java.text.*" errorPage="" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    
    <%@ include file="head.jsp"%>
    
    
    
    <style>
		
		 @font-face {
			  font-family: 'Gotham';
			  src: url("assets/fonts/Gotham-Book.ttf"),
				   url("assets/fonts/Gotham-Medium.ttf");
			  
     	}
		
		#fixedbutton {
			position: fixed;
			bottom: 15px;
			right: 30px; 
		}
		
		.centered{
		color:#936444; 
		font-family:'Gotham', Gotham-Medium;
		letter-spacing:5px;
		}
		
		.figcaption{
			background-color:#C78B66;
		}
		
		
	</style>
    
    
  </head>
  
  <body data-spy="scroll" data-offset="0" data-target="#navbar-main">
 
	<%@ include file="navbar.jsp"%>
    <%@ include file="up.jsp"%>
    
  		<div style="height:50px;">
  		</div>
		<!-- ==== HEADERWRAP ==== -->
	    <div id="headerwrap" id="home" name="home">
			<header class="clearfix">
	  		 		
	  		</header>	    
	    </div><!-- /headerwrap -->
		
		<!-- ==== ABOUT ==== -->
		<div class="container" id="about" name="about" style="padding-bottom:100px;">
			<div class="row white">
			<br>
				<h1 class="centered">LIFE IN ARYADUTA</h1>
				<hr>
                
                
				<div class="col-lg-2">
					
				</div><!-- col-lg-6 -->
				
				<div class="col-lg-8" style="text-align:center;">
					<br><p>THE HEART OF CONTEMPORARY INDONESIA<br><br>

At Aryaduta Hotels, we embody the essence of Indonesian hospitality in every element of our services making it our absolute passion to ensure our guests feel at home. All while celebrating Indonesia&acute;s cultural heritage in our exceptional hotels and resorts. We committed to the group's plan for continued excellence that will serve us beyond Indonesia as a globally competitive and Iconic Indonesian Hotel Brand. Above all, we provide the ideal opportunity for authentic guest experiences with a standard of service world-renowned for its genuine warm-heartedness.</p>
				
                 <p style="text-align:center;"><a href="map.jsp" class="btn btn-default" style="letter-spacing:2px; color:#00A2AE">Explore</a></p>
				</div><!-- col-lg-6 -->
				
				<div class="col-lg-2">
					
				</div><!-- col-lg-6 -->
			</div><!-- row -->
		</div><!-- container -->
		
		<!-- ==== SECTION DIVIDER2 -->
		<section class="section-divider textdivider divider2">
			<div class="container">
				<h1 style="font-family:'Pristina'">"The only way to do great work at Aryaduta Hotels is to love what you do"</h1>
				
				<p style="margin-bottom:0px;">- Natassya Hukom -</p>
                <p style="font-size:16px;">Aryaduta Group Training Manager</p>
			</div><!-- container -->
		</section><!-- section -->

		<!-- ==== GREYWRAP ==== -->
		<div id="greywrap">
			<div class="container" id="jobs" name="jobs" style="padding-top: 160px; padding-bottom:100px;">
				<div class="row">
					<div class="col-lg-8 centered">
						<img class="img-responsive" src="assets/img/macbook.png" align="">
					</div>
					<div class="col-lg-4">
						<h2>We look forward to have you in our team</h2>
						<br>
                        <br>
                        <br>
						<p><a href="job.jsp" class="btn btn-success">Join Us</a></p>
					</div>					
				</div><!-- row -->
			</div>
			<br>
			<br>
		</div><!-- greywrap -->
		
		<!-- ==== SECTION DIVIDER3 -->
		<section class="section-divider textdivider divider3">
			<div class="container">
				<h1>DESIGN SOLVE PROBLEMS</h1>
				<hr>
				<p>From the purely practical to the richly philosophical, design is the solution to a host of challenges.</p>
			</div><!-- container -->
		</section><!-- section -->
		
		<!-- ==== PORTFOLIO ==== -->
		<div class="container container1" id="values" name="values" style="margin-top:100px; margin-bottom:100px;">
		<br>
			<div class="row">
				<br>
				<h1 class="centered">VISION & VALUES</h1>
				<hr>
				<br>
				<br>
			</div><!-- /row -->
			<div class="container">
			<div class="row">	
			
				<!-- PORTFOLIO IMAGE 1 -->
				<div class="col-md-4">
			    	<div class="mask1">
						<figure style="height:288.3px; width:288.3px;">
							<img class="img-responsive" src="assets/img/vision-01.jpg" alt="">
							
						</figure><!-- /figure -->
			    	</div><!-- /grid-mask -->
				</div><!-- /col -->
				
				
						 <!-- MODAL SHOW THE PORTFOLIO IMAGE. In this demo, all links point to this modal. You should create
						      a modal for each of your projects. -->
						      
						  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						    <div class="modal-dialog">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						          <h4 class="modal-title">Project Title</h4>
						        </div>
						        <div class="modal-body">
						          <p><img class="img-responsive" src="assets/img/portfolio/folio01.jpg" alt=""></p>
						          <p>This project was crafted for Some Name corp. Detail here a little about your job requirements and the tools used. Tell about the challenges faced and what you and your team did to solve it.</p>
						          <p><b><a href="#">Visit Site</a></b></p>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div><!-- /.modal-content -->
						    </div><!-- /.modal-dialog -->
						  </div><!-- /.modal -->
				
				
				<!-- PORTFOLIO IMAGE 2 -->
				<div class="col-md-4">
			    	<div class="grid mask">
						<figure style="height:288.3px; width:288.3px;">
							<img class="img-responsive" src="assets/img/empathy-01.jpg" alt="">
					  <figcaption class="figcaption" style="background-color:#C78B66;">
								<h5 style="text-align:center;">Emphaty</h5>
					  </figcaption>
					  <!-- /figcaption -->
						</figure><!-- /figure -->
			    	</div><!-- /grid-mask -->
				</div><!-- /col -->
				
				<!-- PORTFOLIO IMAGE 3 -->
				<div class="col-md-4">
			    	<div class="grid mask">
						<figure style="height:288.3px; width:288.3px;">
							<img class="img-responsive" src="assets/img/fun&friendly-01.jpg" alt="">
					  <figcaption class="figcaption" style="background-color:#C78B66;">
								<h5 style="text-align:center;">Fun & Friendly</h5>
					  </figcaption>
					  <!-- /figcaption -->
						</figure><!-- /figure -->
			    	</div><!-- /grid-mask -->
				</div><!-- /col -->
			</div><!-- /row -->

				<!-- PORTFOLIO IMAGE 4 -->
			<div class="row">	
				<div class="col-md-4 ">
			    	<div class="grid mask">
						<figure style="height:288.3px; width:288.3px;">
							<img class="img-responsive" src="assets/img/integrity-01.jpg" alt="">
					  <figcaption class="figcaption" style="background-color:#C78B66;">
								<h5 style="text-align:center;">Integrity</h5>
					  </figcaption>
					  <!-- /figcaption -->
						</figure><!-- /figure -->
			    	</div><!-- /grid-mask -->
				</div><!-- /col -->
				
				<!-- PORTFOLIO IMAGE 5 -->
				<div class="col-md-4">
			    	<div class="grid mask">
						<figure style="height:288.3px; width:288.3px;">
							<img class="img-responsive" src="assets/img/knowledge-01.jpg" alt="">
					  <figcaption class="figcaption" style="background-color:#C78B66;">
								<h5 style="text-align:center;">Knowledge & Inovation</h5>
					  </figcaption>
					  <!-- /figcaption -->
						</figure><!-- /figure -->
			    	</div><!-- /grid-mask -->
				</div><!-- /col -->
				
				<!-- PORTFOLIO IMAGE 6 -->
				<div class="col-md-4">
			    	<div class="grid mask">
						<figure style="height:288.3px; width:288.3px;">
							<img class="img-responsive" src="assets/img/unique-01.jpg" alt="">
					  <figcaption class="figcaption" style="background-color:#C78B66;">
								<h5 style="text-align:center;">Unique Experience</h5>
					 </figcaption>
					  <!-- /figcaption -->
						</figure><!-- /figure -->
			    	</div><!-- /grid-mask -->
				</div><!-- /col -->
			</div><!-- /row -->
			<br>
			<br>
		</div><!-- /row -->
	</div><!-- /container -->
		
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
