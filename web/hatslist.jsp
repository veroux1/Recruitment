<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<%@ include file="head.jsp"%>
<%@ include file="helper/connect.jsp" %>
<link href="assets/css/admin.css" rel="stylesheet">

    <style>
        .navbar2{
            text-align: center;
            padding-top: 20px;
            padding-bottom: 20px;
        }
        
        .box{
           
            
            
        }
        
        .box1{
            
        }
        
        .inside-box{
            border: 1px solid black;
            margin-top: 20px;
            margin-bottom: 20px;
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
    
    <%
	if(session.getAttribute("userPosition") == null || !session.getAttribute("userPosition").equals("Admin"))
	{
		response.sendRedirect("index.jsp?msg=You are not authorized to access this page!");
	}
	else if(session.getAttribute("userPosition").equals("Admin"))
	{
    %>
    
    <%
           String location = (String)session.getAttribute("location");
    %>
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			
			<a class="navbar-brand" href="#">
				Hi &nbsp;<% out.print(session.getAttribute("user")); %>, Welcome to Aryaduta Talent
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      
			
			<ul class="nav navbar-nav navbar-right" style="padding-right:2%;">
				<li class="dropdown ">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						Account
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">SETTINGS</li>
							<li class=""><a href="#">Other Link</a></li>
							<li class="divider"></li>
							<li><a href="helper/doLogout.jsp">Logout</a></li>
						</ul>
				</li>
			</ul>
		</div><!-- /.navbar-collapse -->
                <nav>
                    <div class="col-lg-2 navbar2"><a href="admin2.jsp">Dashboard</a></div>
                    
                    <div class="col-lg-2 navbar2"><a href="hiring.jsp?unit=<%=location%>&process=Init.%20Qualification&page=1">Hiring Process</a></div>
                    <%
                        if(location.equals("Head Office"))
                        {
                    %>
                    <div class="col-lg-2 navbar2"><a href="hatslist.jsp" style="color: purple;">HATS</a></div>
                    <%
                        }
                    %>
                    <div class="col-lg-2 navbar2"><a href="accepted.jsp?page=1">Accepted</a></div>
                    <div class="col-lg-2 navbar2"><a href="rejected.jsp?unit=<%=location%>&month=&year=&potential=">Rejected</a></div>
                    <div class="col-lg-2 navbar2"><a href="blacklist.jsp" >Blacklist</a></div>
                </nav>
                
	</div><!-- /.container-fluid -->
    </nav> 
    
        <%  
        String unitlocation = request.getParameter("unit");
        
        String query0 = "";
       
        
        query0 = "select * from transactions tr join members mb on tr.userid = mb.userid join jobs jb on tr.jobid = jb.jobid join departments dp on jb.departmentid = dp.departmentid where   tr.status = '3' ";
        ResultSet rs0 = st.executeQuery(query0);
      
        %>
                    
                
                    <div class="col-lg-12 box1">
                    <%
                        rs0.last();
				int totalData = rs0.getRow();
				int dataPerPage = 10;
				int currentPage = 1;
				int totalPage = (int) Math.ceil((double)totalData/(double)dataPerPage);     
			
				
			
				if(request.getParameter("page") != null)
				{
					currentPage = Integer.parseInt(request.getParameter("page"));
				}

				rs0.beforeFirst();
                        
                        while(rs0.next())
                        {
                            if(rs0.getRow() <= currentPage * dataPerPage && rs0.getRow() > (currentPage-1)*dataPerPage)
                            {
                    %>
                    <div class="col-md-5 inside-box" style="margin-left: 6%;">
                        <div class="col-md-12" style="margin-top: 20px; margin-bottom: 20px">
                            <b>Name:</b>&nbsp;<%=rs0.getString("mb.name")%>
                        </div>   
                        <div class="col-md-12" style="margin-bottom: 20px;">
                             <b>Prev Company:</b>&nbsp;<%=rs0.getString("mb.prev_company")%>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                             <b>Name:</b>&nbsp;<%=rs0.getString("mb.prev_position")%>
                        </div>
                        
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>File:</b>&nbsp;&nbsp;<a href="Downloader?name=<%=rs0.getString("mb.cv")%>">CV</a> &nbsp; &nbsp; &nbsp;
                            <a href="Downloader?name=<%=rs0.getString("mb.cv")%>">Application Form</a>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Applied for:</b>&nbsp;<br><%=rs0.getString("dp.department_name")%><br>
                                <%=rs0.getString("jb.position")%><br>
                                    <%=rs0.getString("jb.location")%><br>
                        </div>
                        
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <input type="submit" class="btn btn-md btn-primary" value="  Proceed   ">
                           
                            <%
                                if(!rs0.getString("tr.hats_status").equals("sent"))
                                {
                            %>
                            <a href="helper/doSendHats.jsp?transactionid=<%=rs0.getString("tr.transactionid")%>" class="btn btn-md btn-primary" onclick="window.open('https://ha8.harrisonassessments.com/customer/departmentSelectionDispatch.do');">Send HATS</a>
                            <%
                                }
                                else if(rs0.getString("tr.hats_status").equals("sent"))
                                {
                            %>
                        
                                <a data-toggle="modal" data-target="#submit-modal" href="#submit-modal" class="btn btn-warning">Upload HATS<a>
                            <%  
                                }
                            %>
                        </div>
                        <br>
                             <div class="modal fade product_view" id="submit-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
                <h3 class="modal-title">Please complete file below</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                     <form name="uploadForm" action="UploaderHATS" method="post" enctype="multipart/form-data">
                          
                        <input type="hidden" name="transactionid" value="<%=rs0.getString("tr.transactionid")%>">
                        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12">
                        <div class="full-width" id="wrapperhats">
                        <input type="file" id="file1" name="file1" class="form-control form-input form-style-base">
                        <input type="text" id="fake-input" class="form-control form-input form-style-fake" placeholder="Upload HATS Result" readonly>
                        <span class="glyphicon glyphicon-open input-place"></span>
                        </div>
                    </div>
                    
                    <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12" style="height: 100px; text-align: center; padding-top: 50px;">
                        <input type="submit" class="button" id="submit" value="Submit" name="submit" style="margin: 0px;" />
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
                    </div>
                        <%
                                }
                            }
                        %>
                </div>
                        <div class="col-md-12">
                        <br>
                        <br>
                        <p style="text-align:center">
                        <%
			for(int i=1;i<=totalPage;i++)
			{
			%>
                        <a href = "hatslist.jsp?page=<%=i%>" style="text-decoration:none; padding-right:3px"> <%=i%> </a>
                        <%   
                        }
			%>
                        <br />
                        <br />
                        </div>

        
          <%
              }
          %>     
    
    
        
         
</script>

	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
        <script type="text/javascript" src="assets/js/smoothscroll.js"></script>
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>

        <script>
            $("#wrapperhats").on("change","#file1",function(){
                var file1 = $('#file1').val();
                var subs = file1.substring(12);
                $('input[placeholder="Upload HATS Result"]').attr('placeholder', subs)
            }); 
            
        </script>
        
</body>
</html>