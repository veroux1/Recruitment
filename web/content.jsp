<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

	<%@ include file="head.jsp"%>

    <!-- Loader -->
    <link href="assets/css/loader.css" rel="stylesheet">
    
    
<style>

	.box{
    width:100%;
    height:500px;
	}


	.bg1{
    background-image:url(assets/img/bg/2.jpg);
	background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center center; 
	}
	
	.bg2{
	background-image:url(assets/img/bg/pp-04.jpg);
	background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center center; 
	}

	/**************************
	Example body text
	*************************/
	.textbox-component {
		position: relative;
	}
	.bgcolor2 {
		background:#f48c42;
	}
	.padding80 {
		padding:80px;
	}
	.divider50 {
		height: 50px;
	}
	
	/* Font */
	
	@font-face {
			  font-family: 'Gotham';
			  src: url("assets/fonts/Gotham-Book.ttf"),
				   url("assets/fonts/Gotham-Medium.ttf"),
			       url("assets/fonts/Gotham-Bold.tff"),
				   url("assets/fonts/Gotham-Black.tff");
				   
     	}
		
		
	.centered{
			color:#936444; 
			font-family:'Gotham', Gotham-Medium;
			letter-spacing:5px;
		}
		
	#fixedbutton {
			position: fixed;
			bottom: 15px;
			right: 30px; 
		}
	
	.hideme
	{
		opacity:0;
	}
	
	.content-header{
		font-family:'Gotham', Gotham-Black;
	}
	
	.content{
		font-family:'Gotham', Gotham-Medium;
	}
	
	.col-lg-4{
		text-align:left;
	}
	
</style>

</head>

<body onload="myFunction()" style="margin:0;">

	
<!--<div id="loader"></div> 
<div style="display:none;" id="myDiv" class="animate-bottom"> -->
<%@ include file="navbar.jsp"%>
<%@ include file="up.jsp"%>


<!-- carousell -->
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>
 
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <div class="box"><img src="assets/img/slider/foto-7.jpg" class="img-responsive"/></div>
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <div class="box"><img src="assets/img/slider/foto-1.jpg" class="img-responsive"/></div>
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <div class="box"><img src="assets/img/slider/foto-2.jpg" class="img-responsive"/></div>
      <div class="carousel-caption">
      </div>
    </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div> <!-- Carousel -->
<!-- /carousell -->

<section>
<div class="padding80" id="about">
		<div class="container">
			<div class="row">
			<div class="col-md-12">
			<div class="divider10"></div>
					<h3 class="hideme" style="text-align:center;">Student Program</h3>
                    <br />
					

							<p class="hideme" style="text-align:center;">Fusce semper, nibh eu sollicitudin imperdiet, dolor magna vestibulum mi, 
								vel tincidunt augue ipsum nec erat. Vestibulum congue leo elementum 
								ullamcorper commodo. Class aptent taciti sociosqu ad litora torquent 
								per conubia nostra, per inceptos himenaeos.
                            </p>
								
					
					
				</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</section>

	<section>
    <div class="padding80 bg1" id="about" style="height:550px;">
    <div class= "container"> 
        <div class= "row">
        <div class="col-md-6">
             <div class="textbox-component">
        					
        	 </div>
        </div>
        <div class="col-md-6">
            	<div class="divider50"></div>
            	   <div class="textbox-component">
                   	  <br />
                      <br />
                      <br />
                      <br />
                     
                     <h2 class="content-header" style="text-align:left; color:#024655;">&nbsp; &nbsp; <b>Calling All Future Talents</b></h2>
                      <ul>
                      <br />
					<p class="content" style="text-align:left; color:#024655; font-size:20px;">Management Trainee Program</p>
					
					
                     <p style="text-align:left;"><a href="mtrainee.jsp" class="btn btn-default" style="letter-spacing:2px; color:#00A2AE">Explore</a></p>
                   
				</ul>
                    
        					
        					</div>
        
                  </div>
    </div>
</div>
</div>
</section>

<div style="height:100px; background-color:white;">
</div>

<section>
<div class="padding80 bg2" id="about" style="height:550px;">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
			<div class="divider10"></div>
					 <br />
                      <br />
                      <br />
                      <br />
                      <br />
                      <br />
                       <br />
                    
                      <h2 class="content-header" style="text-align:left; color:white;"><b>&nbsp; &nbsp; Discover Your Meaningful<br>&nbsp; &nbsp;Journey of Life</b></h2>
                      <ul>
                      <br />
					<p class="content" style="text-align:left; font-size:20px; color:white;">Internship Program</p>
					
					
                    <p style="text-align:left;"><a href="internship.jsp" class="btn btn-default" style="letter-spacing:2px; color:#FDD55C">Explore</a></p>
				</div>
				

				<div class="col-md-6">
					<!--img-->
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</section>
<div style="height:100px; background-color:white; margin-bottom:50px;">
</div>

<%@ include file="footer.jsp"%>

  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  

    
<script>
var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 1000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}

$('.carousel').carousel({
	interval: 3000
})



</script>

<script>
$(document).ready(function() {
    
    /* Every time the window is scrolled ... */
    $(window).scroll( function(){
    
        /* Check the location of each desired element */
        $('.hideme').each( function(i){
            
            var bottom_of_object = $(this).offset().top + $(this).outerHeight();
            var bottom_of_window = $(window).scrollTop() + $(window).height();
            
            /* If the object is completely visible in the window, fade it it */
            if( bottom_of_window > bottom_of_object ){
                
                $(this).animate({'opacity':'1'},1000);
                    
            }
            
        }); 
    
    });
    
});
</script>


    
</body>
</html>
