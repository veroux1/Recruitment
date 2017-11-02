<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Untitled Document</title>

	<%@ include file="head.jsp"%>
        <%@ include file="helper/connect.jsp"%>
    <!-- Loader -->
    <link href="assets/css/loader.css" rel="stylesheet">
    
    
    
    
    <script src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/modernizr.custom.js"></script>
    
    
    <style>
	.things{
	opacity:0.3;
	}
	
	
	.panel:hover .things{
	display:block;
	opacity: 1;
	transition: width, border opacity .0s linear .2s;
	-webkit-transition: width, border opacity .0s linear .2s;
	-moz-transition: width, border opacity .0s linear .2s;
	-ms-transition: width, border opacity .0s linear .2s;
	
	transition: opacity .2s linear .2s;
	-webkit-transition: opacity .2s linear .2s;
	-moz-transition: opacity .2s linear .2s;
	-ms-transition: opacity .2s linear .2s;
	}
	
	.panel-footer{
	background-color:#ffffff !important;
	font-size:16px;
	}
	
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
	
	#fixedbutton {
			position: fixed;
			bottom: 15px;
			right: 30px; 
	}
	
	ul.a {list-style-type: circle;}
        
        .file-upload {
	position: relative;
	display: inline-block;
	}
	
	.file-upload__label {
	  display: block;
	  padding: 1em 2em;
	  color: #fff;
	  background: #222;
	  border-radius: .4em;
	  transition: background .3s;
	  
	}
	
	 .file-upload__label:hover {
		 cursor: pointer;
		 background: #000;
	  }
		
	.file-upload__input {
		position: absolute;
		left: 0;
		top: 0;
		right: 0;
		bottom: 0;
		font-size: 1;
		width:0;
		height: 100%;
		opacity: 0;
	}
	
	label{
		width:290px;
		text-align:center;
	}
	
	.button {
     background:none!important;
     color:inherit;
     border:none; 
     padding:0!important;
     font: inherit;
     /*border is optional*/
    
     cursor: pointer;
	 margin-left:75px;
	 }
	
	.full-width{
            float:left;width:100%;min-height:70px;position:relative;
	}
	.form-style-fake{position:absolute;top:0px;}
	.form-style-base{position:absolute;top:0px;z-index: 999;opacity: 0;}
	.imgCircle{border-radius: 50%;}
	.form-input{height:50px;border-radius: 0px;margin-top: 20px;}
	.mg-auto{
		margin:0 auto;max-width: 200px;overflow: hidden;
	}
	.fake-styled-btn{
		background: #006cad;
		padding: 10px;
		color: #fff;
	}
	#main-input{width:250px;}
	.input-place{
		position: absolute;top:35px;left: 30px;font-size:23px;color:gray;}
	.margin{margin-top:10px;margin-bottom:10px;}
	
	.bg-transparent{
		background: rgba(0,0,0,0.5);float: left;
		width: 100%;margin-top: 0px;
	}
	
	.custom-form{float: left;width:100%;border-radius: 20px;box-shadow: 0 0 16px #fff;overflow: hidden;
	background: rgba(255,255,255,0.6);
	}
	.img-section{
		float: left;width: 100%;padding-top: 15px;padding-bottom: 15px;background: rgba(0,0,0,0.7);position: relative;
	}
	
	
	
	.custom-btn{
		margin-top: 15px;
		border-radius: 0px;
		padding: 10px 60px;
		margin-bottom: 15px;
	}
	#checker{
		opacity: 0;
		position: absolute;
		top: 0px;
		cursor: pointer;
	}
	.color{
		color:#fff;
	}
	
	/*====== style for placeholder ========*/
	
	.form-control::-webkit-input-placeholder {
		color:lightgray;
		font-size:18px;
	}
	.form-control:-moz-placeholder {
		color:lightgray;
		font-size:18px;
	}
	.form-control::-moz-placeholder {
		color:lightgray;
		font-size:18px;
	}
	.form-control:-ms-input-placeholder {
		color:lightgray;
		font-size:18px;
	}
	/* enable absolute positioning */
        .inner-addon { 
            position: relative; 
        }

        /* style icon */
        .inner-addon .glyphicon {
          position: absolute;
          padding: 10px;
          pointer-events: none;
        }

        /* align icon */
        .left-addon .glyphicon  { left:  0px;}
        .right-addon .glyphicon { right: 0px;}

        /* add padding  */
        .left-addon input  { padding-left:  30px; }
        .right-addon input { padding-right: 30px; }

        .product_view .modal-dialog{max-width: 800px; width: 100%;}
        .pre-cost{text-decoration: line-through; color: #a5a5a5;}
        .space-ten{padding: 10px 0;}
        
        .full-width{
            float:left;width:100%;margin-top:30px;min-height:100px;position:relative;
        }
        .form-style-fake{position:absolute;top:0px;}
        .form-style-base{position:absolute;top:0px;z-index: 999;opacity: 0;}
        .imgCircle{border-radius: 50%;}
        .form-control{padding: 10px 50px;}
        .form-input{height:50px;border-radius: 0px;margin-top: 20px;}
        .mg-auto{
            margin:0 auto;max-width: 200px;overflow: hidden;
        }
        .fake-styled-btn{
            background: #006cad;
            padding: 10px;
            color: #fff;
        }
        #main-input{width:250px;}
        .input-place{
            position: absolute;top:35px;left: 20px;font-size:23px;color:gray;}
        .margin{margin-top:10px;margin-bottom:10px;}
        .truncate {
            width: 250px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .bg-transparent{
            background: rgba(0,0,0,0.5);float: left;
            width: 100%;margin-top: 0px;
        }

        .custom-btn{
            margin-top: 15px;
            border-radius: 0px;
            padding: 10px 60px;
            margin-bottom: 15px;
        }

        .color{
            color:#fff;
        }

        /*====== style for placeholder ========*/

        .form-control::-webkit-input-placeholder {
            color:lightgray;
            font-size:18px;
        }
        .form-control:-moz-placeholder {
            color:lightgray;
            font-size:18px;
        }
        .form-control::-moz-placeholder {
            color:lightgray;
            font-size:18px;
        }
        .form-control:-ms-input-placeholder {
            color:lightgray;
            font-size:18px;
        }
        
	</style>

</head>
<body>

<%@ include file="navbar.jsp"%>
<%@ include file="up.jsp"%>

<br />
<div class="container">
    <div class="col-lg-12" style="background-image:url(assets/img/line-02.jpg); background-size:cover; padding:0px; height:550px;">

    		<div style="margin-top:100px; text-align:center;">
				
                <h1 class="centered">Management Trainee</h1>
                <hr />
				<br />
			</div>
    				
					<p style="margin-top:50px; margin-left:30px; margin-right:30px; font-size:20px; text-align:center;">This 12 - 24 months Supervisory / Managerial program will develop young talent by offering a structured development curriculum where participants will interact with Senior Management Leaders during their journey. Let's join this entry - level leadership talent program for the next generations of leaders..</p>
		
	</div>
</div>
</div>


<div class="container">
    <div class="col-sm-12 no-gutter">
    		<div>
				 <h1 class="centered">About The Programme</h1>
                <hr />
               
			</div>
    	<img src="assets/img/program-001.jpg" class="img-responsive" style="margin-top:80px;"/>
	</div>
</div>
</div>

<div class="col-lg-4" style="margin-top: 100px; margin-bottom: 100px;">&nbsp;</div>
<div class="col-lg-4" style="margin-top: 100px; margin-bottom: 100px;">
    
    <%
                String prev_com = "";
                String prev_pos = "";
                String gender = "";
                String age = "";
                String birthplace= "";
                String address = "";
                String idcard = "";
                
                
                
                String userid = (String)session.getAttribute("userID");
                String query1 = "select * from members where userid =  '"+userid+"' ";
                ResultSet rs1 = st.executeQuery(query1);
                if(rs1.next())
                {
                    prev_com = rs1.getString("prev_company");
                    prev_pos = rs1.getString("prev_position");
                    gender = rs1.getString("gender");
                    age = rs1.getString("age");
                    birthplace = rs1.getString("birthplace");
                    address = rs1.getString("address");
                    idcard = rs1.getString("idcard");
                }
        if(request.getParameter("location") ==  null)
        {
    %>
    <form action="mtrainee.jsp" method="get">
                        
                        <select name="location" style="width: 100%;" onchange="this.form.submit()">
                                            <option value="">Location</option>
                                            <option value="Head Office">Head Office</option>
                                            <option value="Lippo Village">Lippo Village</option>
                                            <option value="Semanggi">Semanggi</option>
                                            <option value="Jakarta">Jakarta</option>
                                            <option value="Bandung">Bandung</option>
                                            <option value="Palembang">Palembang</option>
                                            <option value="Manado">Manado</option>
                                            <option value="Makassar">Makassar</option>
                                            <option value="Medan">Medan</option>
                                            <option value="Pekan Baru">Pekanbaru</option>
                        </select>
                        
    </form>
    <%
        }
        else
        {
    %>
    <form action="internship.jsp" method="get">
                        
                        <select name="location" style="width: 100%;" onchange="this.form.submit()">
                                            <option value="">Selected Location: <%=request.getParameter("location")%></option>
                                            <option value="Head Office">Head Office</option>
                                            <option value="Lippo Village">Lippo Village</option>
                                            <option value="Semanggi">Semanggi</option>
                                            <option value="Jakarta">Jakarta</option>
                                            <option value="Bandung">Bandung</option>
                                            <option value="Palembang">Palembang</option>
                                            <option value="Manado">Manado</option>
                                            <option value="Makassar">Makassar</option>
                                            <option value="Medan">Medan</option>
                                            <option value="Pekan Baru">Pekanbaru</option>
                        </select>
                        
    </form>
    <%
        }
    %>
</div>

<%
        if(request.getParameter("location") != null)
        {
            if(request.getParameter("location").equals("Head Office"))
            {
                session.setAttribute("jobID", "JB006");
                
               
            }
            else if(request.getParameter("location").equals("Lippo Village"))
            {
                session.setAttribute("jobID", "JB007");
                
            }
             else if(request.getParameter("location").equals("Semanggi"))
            {
                session.setAttribute("jobID", "JB008");
                
            }
             else if(request.getParameter("location").equals("Jakarta"))
            {
                session.setAttribute("jobID", "JB009");
               
            }
             else if(request.getParameter("location").equals("Bandung"))
            {
                session.setAttribute("jobID", "JB010");
               
            }
             else if(request.getParameter("location").equals("Palembang"))
            {
                session.setAttribute("jobID", "JB011");
                
            }
             else if(request.getParameter("location").equals("Manado"))
            {
                session.setAttribute("jobID", "JB0012");
            }
             else if(request.getParameter("location").equals("Makassar"))
            {
                session.setAttribute("jobID", "JB013");
            }
             else if(request.getParameter("location").equals("Medan"))
            {
                session.setAttribute("jobID", "JB014");
            }
             else if(request.getParameter("location").equals("Pekan Baru"))
            {
                session.setAttribute("jobID", "JB015");
            }
        }
%>

<div class="col-lg-4" style="margin-top: 100px; margin-bottom: 100px;">&nbsp;</div>
<div class="container" style="margin-top:150px; height:550px; margin-bottom:100px;">
	
    <div class="col-lg-12" style="padding:0px; height:550px;">
		<img src="assets/img/entrymt.jpg" class="img-responsive" usemap="#map1"/>
        <map name="map1">
        <%
          if(session.getAttribute("userID") == null || !session.getAttribute("userPosition").equals("User"))
          {
        %>
      	<area shape="rect" coords="3285,1497,3753,1641" data-toggle="modal" data-target="#cancel-modal" href="#cancel-modal"/>
        <%
            }
            else
            {
                if(prev_com.equals("-") || prev_pos.equals("-") || age.equals("-") || gender.equals("-") || birthplace.equals("-") || address.equals("-") || idcard.equals("-"))
                {
        %>
        <area shape="rect" coords="3285,1497,3753,1641" data-toggle="modal" data-target="#cancel1-modal" href="#cancel-modal"/>
        <%
                }
                else
                {
        %>
        <area shape="rect" coords="3285,1497,3753,1641" data-toggle="modal" data-target="#submit-modal" href="#submit-modal"/>
       
        <%
                }
            }
        %>
    </div>
</div>
</div>



 <div class="modal fade product_view" id="submit-modal">
    <div class="modal-dialog">
        <%
            if(request.getParameter("location") ==  null)
            {
        %>
        <div class="modal-content">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" class="class pull-right" style="color: black;"><span class="glyphicon glyphicon-remove"></span></a>
                <h3 class="modal-title">Reminder</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-4 col-xs-12">
                        <div class="full-width">
                            <h3 style="padding-bottom: 20px;"> You have to select the location above before able to apply!
                        </div>
                        </div>
                </div>
            </div>
        </div>
      <%
          }
          else
          {
      %>
      <div class="modal-content">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" class="class pull-right" style="color: black;"><span class="glyphicon glyphicon-remove"></span></a>
                <h3 class="modal-title">Please complete file below</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                     <form name="uploadForm" action="Uploader" method="post" enctype="multipart/form-data">
                         
                        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12">
                        <div class="full-width" id="wrappercv">
                        <input type="file" id="file1" name="file1" class="form-control form-input form-style-base">
                        <input type="text" id="fake-input" class="form-control form-input form-style-fake" placeholder="Upload CV" readonly>
                        <span class="glyphicon glyphicon-open input-place"></span>
                        </div>
                    </div>
                    <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12" style="height: 100px;">
                        <div class="full-width" id="wrapperform">
                        <input type="file" id="file2" name="file2" class="form-control form-input form-style-base">
                        <input type="text" id="fake-input" class="form-control form-input form-style-fake" placeholder="Upload Application Form" readonly>
                        <span class="glyphicon glyphicon-open input-place"></span>
                        </div>
                    </div>
                    <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12" style="height: 100px; text-align: center; padding-top: 50px;">
                        <input type="submit" class="button" id="submit" value="Submit" name="submit" style="margin: 0px;"/>
                    </div>
                    </form>
                </div>
            </div>
        </div>
      <%
          }
      %>
    </div>
</div>

<div class="modal fade product_view" id="cancel-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" class="class pull-right" style="color: black;"><span class="glyphicon glyphicon-remove" ></span></a>
                <h3 class="modal-title">Reminder</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-4 col-xs-12">
                        <div class="full-width">
                            <h3 style="padding-bottom: 20px;"> You have to Sign in fist before able to applying job!
                            <h5 style="padding-bottom: 20px;"> Don't have an id yet? <b><a href="register.jsp">Sign up</a></b> here!
                        </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade product_view" id="cancel1-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
                <h3 class="modal-title">Reminder</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-4 col-xs-12">
                        <div class="full-width">
                            <h3 style="padding-bottom: 20px;"> You have to fill all the field in your profile before able to applying job!
                            <h5 style="padding-bottom: 20px;"> Click <b><a href="userprofile.jsp">here</a></b> to update your profile !
                        </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>

	<%@ include file="footer.jsp"%>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	
 <script src="assets/js/jquery.rwdImageMaps.min.js"></script>
	<script>
		$(document).ready(function(){
				$('img[usemap]').rwdImageMaps(); //responsive coordinate (for button all)
			});
	</script>

	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
    
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>
        
        <script type="text/javascript">
        $(document).ready(function() {
            $('#submit').bind("click",function() 
            { 
                var file1 = $('#file1').val();
                var file2 = $('#file2').val(); 
                if(file1=='') 
                { 
                    alert("You haven't selected the CV"); 
                    return false;
                }
               
                else if(file2=='') 
                { 
                    alert("You haven't selected the Application Form"); 
                    return false;
                }
                else{
                    return true; 
                }

            }); 
            
           
        });
        
        
        </script> 
        <script>
            $("#wrappercv").on("change","#file1",function(){
                var file1 = $('#file1').val();
                var subs = file1.substring(12);
                $('input[placeholder="Upload CV"]').attr('placeholder', subs)
            }); 
            $("#wrapperform").on("change","#file2",function(){
                var file2 = $('#file2').val();
                var subs = file2.substring(12);
                $('input[placeholder="Upload Application Form"]').attr('placeholder', subs)
            });
        </script>
   

</body>
</html>





