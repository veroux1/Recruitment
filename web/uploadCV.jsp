<%-- 
    Document   : uploadCV
    Created on : Oct 6, 2017, 9:00:31 AM
    Author     : Darien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="head.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
	.middle{
		color:#936444; 
		font-family:'Gotham', Gotham-Medium;
	}
	
	a{
		color:#000000;
	}
	
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
        <div style="margin-top: 100px; margin-bottom: 100px;">
                <div class="row">
                     <form name="uploadForm" action="UploaderRequest" method="post" enctype="multipart/form-data">
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
                        <input type="submit" class="button-primary" id="submit98" value="Submit" name="submit" style="margin: 0px;"/>
                    </div>
                    </form>
                </div>
            </div>
        <%@ include file="footer.jsp"%>
        <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
       
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>
        
        <script type="text/javascript">
        $(document).ready(function() {
            $('#submit98').bind("click",function() 
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
