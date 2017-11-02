<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="helper/connect.jsp" %>
<%@ include file="head.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                
		String jobid = request.getParameter("jobid");
                session.setAttribute("jobID",jobid);
		String departmentid="";
		
		String query = "select * from jobs jb join departments dp on dp.departmentid = jb.departmentid where jb.jobid = '"+jobid+"' ";
		ResultSet rs = st.executeQuery(query);
		
		if(rs.next())
		{
	%>
			<div class="container" style="margin-top:100px; margin-bottom:100px;">
                <div class="col-lg-8">
                    <a href="index.jsp">Aryaduta</a> / <a href="job.jsp">Department</a> / <a href="listjob.jsp?name=<%=rs.getString("department_name")%>"><%=rs.getString("department_name")%></a>
                </div>
                <div class="col-lg-8">
                	<h1 class="middle"><%=rs.getString("position")%></h1>
                </div>
                <div class="col-lg-8" style="margin-top:50px;margin-bottom:75px;">
                	<h3 class="middle">Requirements</h3>
                    <ul>
                    	<li>Minimum <%=rs.getString("jb.education_level")%> degree</li>
                        <li>Minimum of <%=rs.getString("jb.experience")%> years of working experience</li>
                        <li>Field of Studies : <%=rs.getString("jb.fos")%></li>
                        <li>Language ability : <%=rs.getString("jb.language")%></li>
                    </ul>
                    <br />
                   	<h3 class="middle">Job Description</h3>
                    <p style="margin-left:21px;"><%=rs.getString("jb.description")%></p>
                </div>
                 <div class="col-lg-12">
                      <%
                            if(session.getAttribute("userID") == null || !session.getAttribute("userPosition").equals("User"))
                            {
                      %>
                	 <p style="text-align:center;"><a data-toggle="modal" data-target="#cancel-modal" href="#cancel-modal" class="btn btn-default" style="letter-spacing:2px; color:#00A2AE">Apply</a></p>
                      <%
                            }
                            else
                            {
                                if(prev_com.equals("-") || prev_pos.equals("-") || age.equals("-") || gender.equals("-") || birthplace.equals("-") || address.equals("-") || idcard.equals("-"))
                                {
                
                      %>   
                         <p style="text-align:center;"><a data-toggle="modal" data-target="#cancel1-modal" href="#submit-modal" class="btn btn-default" style="letter-spacing:2px; color:#00A2AE">Apply</a></p>
                      <%
                                }
                                else
                                {
                      %>
                          <p style="text-align:center;"><a data-toggle="modal" data-target="#submit-modal" href="#submit-modal" class="btn btn-default" style="letter-spacing:2px; color:#00A2AE">Apply</a></p>       
                      <%
                                }
                            }
                      %>

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
 
<div class="modal fade product_view" id="cancel-modal">
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
                            <h3 style="padding-bottom: 20px;"> You have to Sign in fist before able to applying job!
                            <h5 style="padding-bottom: 20px;"> Don't have an id yet? <b><a href="register.jsp">Sign up</a></b> here!
                        </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
                      
 <div class="modal fade product_view" id="submit-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
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
    </div>
</div>
   
           
     
               
    <%
            
		}
	%>
	
    
   	
   	<%@ include file="footer.jsp"%>

        <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
        <script type="text/javascript" src="assets/js/smoothscroll.js"></script>
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
                    alert("You haven't selected the Registration Form"); 
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
