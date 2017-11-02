		
		<div class="container" id="contact" name="contact">
			<div class="row">
			<br>
				<h1 class="centered">GET IN TOUCH WITH US</h1>
				<hr>
				<br>
				<br>
				<div class="col-lg-4">
					<h3>Contact Information</h3>
                    <br>
					<h4>Corporate Office </h4>
                    <h5>PT. Aryaduta International Management</h5>
                    	<span class="icon icon-envelop"></span> <a href="#" style="color:#555"> hrd@aryaduta.com</a> <br/><br>
                        <span class="icon icon-home"></span> Menara Matahari 2nd Floor. <br> &nbsp;Jl. Boulevard Palem Raya No.7<br/>
						<span class="icon icon-phone"></span> +6221 25669000  <br/>
						
                        
              
				</div><!-- col -->
				
				<div class="col-lg-4" >
					<h3>Any Questions ?</h3>
				
					<div class="container-fluid">
                    <div>
                   
						<form class="form-horizontal" action="helper/doAddQuestion.jsp" role="form" style="padding-top:6%;">
						  <div class="form-group">
						    <label for="inputEmail1" class="col-lg-4 control-label"></label>
						    <div class="col-lg-10">
						      <input type="email" class="form-control" placeholder="Email" name="email" id="email">
						    </div>
						  </div>
						  <div class="form-group">
						    <label for="text1" class="col-lg-4 control-label"></label>
						    <div class="col-lg-10">
						      <input type="text" class="form-control" placeholder="Your Name" name="name" id="name">
						    </div>
						  </div>
                          <div class="form-group">
						    <div class="col-lg-10">
						     <textarea rows="3" cols="35" name="question" id="question"> </textarea>
						    </div>
						  </div>
						  <div class="form-group">
						    <div class="col-lg-10">
						      <input type="submit" class="btn btn-success" value="Send" id="submit99">
						    </div>
						  </div>
					   </form><!-- form -->
                       </div>
					</div>
                    <br>
                    
				</div><!-- col -->
			 <div class="col-lg-4">
					<h3>Find Us On</h3>
                    <br>
                     <ul class="social-network social-circle">
                       
                        <li ><a href="https://www.facebook.com/aryadutahotels" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li ><a href="https://www.instagram.com/aryaduta_hotels" class="icoInstagram" title="Instagram"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="https://www.linkedin.com/company/hotel-aryaduta-palembang---lippo-group" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                        <li ><a href="https://www.youtube.com/user/aryadutahotels" class="icoYoutube" title="YouTube"><i class="fa fa-youtube"></i></a></li>
                    </ul>		
				</div><!-- col -->
				
			</div><!-- row -->
		
		</div><!-- container -->

               
        <script type="text/javascript" src="assets/js/jquery.smooth-scroll.js"></script>
        <script type="text/javascript" src="assets/js/jquery.smooth-scroll.min.js"></script>
             
     <script>
		$(document).ready(function(){
			$(".navbar").css("background","rgba(41, 41, 42, 0)");
		$(window).on("scroll",function(){
		var wn = $(window).scrollTop();
		if(wn > 650){
			$(".navbar").css("background","rgba(41, 41, 42, 1)");
		}
		else{
			$(".navbar").css("background","rgba(41, 41, 42, 0)");
			}
		  });
		});
	 </script>   
         
         <script type="text/javascript">
        $(document).ready(function() {
            $('#submit99').bind("click",function() 
            { 
                var email = $('#email').val();
                var name = $('#name').val(); 
                var question = $('#question').val();
                
                if(email==='') 
                { 
                    alert("You haven't input your email"); 
                    return false;
                }
               
                else if(name==='') 
                { 
                    alert("You haven't input your name"); 
                    return false;
                }
                else if(question==='') 
                { 
                    alert("You haven't input your question"); 
                    return false;
                }
               
                else{
                    alert("Thank you for you question, we will reply directly to your email")
                    return true; 
                }

            }); 
            
        });
        </script> 
        
    