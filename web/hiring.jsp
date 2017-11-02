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
        
        .form-group{
            margin-top: 20px;
        }
        
        .input{
            width: 50%;
        }
        
        h2{
            text-align: center;
        }
        
        table{
            min-height: 300px;
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
		response.sendRedirect("index.jsp?msg=You are not authorized to access that page!");
	}
        else if(!session.getAttribute("location").equals("Head Office") && !session.getAttribute("location").equals(request.getParameter("unit")))
        {
                response.sendRedirect("admin2.jsp?msg=You are not authorized to access that page!");
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
                    
                    
                   
                    <%
                        if(location.equals("Head Office"))
                        {
                    %> 
                    <div class="col-lg-2 navbar2">
                    
                        <ul class="nav navbar-nav navbar-right" style="padding-right:2%;">
				<li class="dropdown ">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" style="padding-top: 0px; margin-right: 50px;">
						Hiring Process
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="hiring.jsp?unit=Head Office&process=Init. Qualification&page=1">Head Office</a></li>
							<li><a href="hiring.jsp?unit=Lippo Village&process=Init. Qualification&page=1">Lippo Village</a></li>
							<li><a href="hiring.jsp?unit=Semanggi&process=Init. Qualification&page=1">Semanggi</a></li>
							<li><a href="hiring.jsp?unit=Jakarta&process=Init. Qualification&page=1">Jakarta</a></li>
                                                        <li><a href="hiring.jsp?unit=Palembang&process=Init. Qualification&page=1">Palembang</a></li>
                                                        <li><a href="hiring.jsp?unit=Manado&process=Init. Qualification&page=1">Manado</a></li>
                                                        <li><a href="hiring.jsp?unit=Pekan Baru&process=Init. Qualification&page=1">Pekanbaru</a></li>
                                                        <li><a href="hiring.jsp?unit=Makasar&process=Init. Qualification&page=1">Makasar</a></li>
                                                        <li><a href="hiring.jsp?unit=Medan">Medan</a></li>
						</ul>
				</li>
			</ul>
                        
                    </div>
                    <%
                        }
                        else
                        {
                    %>
                        <div class="col-lg-2 navbar2"><a href="hiring.jsp?unit=<%=location%>&&process=Init. Qualification&page=1">Hiring Process</a></div>
                    <%
                        }
                    %>
                    <%
                        if(session.getAttribute("location") != null && session.getAttribute("location").equals("Head Office"))
                        {
                    %>
                   
                   
                     <div class="col-lg-2 navbar2"><a href="hatslist.jsp">HATS</a></div>
                    <%
                        }
                    %>
                    <div class="col-lg-2 navbar2"><a href="accepted.jsp?page=1">Accepted</a></div>
                    <div class="col-lg-2 navbar2"><a href="rejected.jsp?unit=<%=location%>&month=&year=&potential=">Rejected</a></div>
                    <div class="col-lg-2 navbar2"><a href="blacklist.jsp">Blacklist</a></div>
                </nav>
                
	</div><!-- /.container-fluid -->
    </nav> 
                    <%
                         String unitlocation = request.getParameter("unit");
                    %>
                    <div class="col-lg-12" style="text-align: center; margin-bottom: 20px;"><h1>Hiring Process: <%=unitlocation%></h1></div>
                    <div class="col-lg-6"></div>
                    <div class="col-lg-6">
                        <div class="col-lg-3"><a href="hiring.jsp?unit=<%=unitlocation%>&process=Init. Qualification&page=1" style="font-size: 18px;<%if(request.getParameter("process").equals("Init. Qualification")){%>color: purple;<%}%>">Init. Qualification</a></div>
                        <div class="col-lg-3"><a href="hiring.jsp?unit=<%=unitlocation%>&process=HR Interview&page=1" style="font-size: 18px;<%if(request.getParameter("process").equals("HR Interview")){%>color: purple;<%}%>">HR Interview</a></div>
                        <div class="col-lg-3"><a href="hiring.jsp?unit=<%=unitlocation%>&process=User Interview&page=1" style="font-size: 18px;<%if(request.getParameter("process").equals("User Interview")){%>color: purple;<%}%>">User Interview</a></div>
                        <div class="col-lg-3"><a href="hiring.jsp?unit=<%=unitlocation%>&process=Offering Contract&page=1" style="font-size: 18px; <%if(request.getParameter("process").equals("Offering Contract")){%>color: purple;<%}%>">Offer. Contract</a></div>
                    </div>
        <%  
       
        String query0 = "select * from transactions tr join members mb on tr.userid = mb.userid join jobs jb on tr.jobid = jb.jobid join departments dp on jb.departmentid = dp.departmentid where jb.location = '"+unitlocation+"' and tr.status = '0' ";
        ResultSet rs0 = st.executeQuery(query0);
        
        if(request.getParameter("process").equals("Init. Qualification"))
        {
        %>
                <!-- step 1 -->
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
                     <div class="col-md-5 inside-box" style="margin-left: 6%; margin-top: 50px;">
                        <div class="col-md-12" style="margin-top: 20px; margin-bottom: 20px;">
                           <b>Name:</b>&nbsp;<%=rs0.getString("mb.name")%>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                           <b>Prev Company:</b>&nbsp; <%=rs0.getString("mb.prev_company")%>
                       </div>
                       <div class="col-md-12" style="margin-bottom: 20px;">
                           <b>Last Position:</b>&nbsp;<%=rs0.getString("mb.prev_position")%>
                       </div>
                       <div class="col-md-12" style="margin-bottom: 20px;">
                           <b>Applied for:</b>&nbsp;<%=rs0.getString("jb.position")%>
                       </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                           <b>File:</b>&nbsp; <a href="Downloader?name=<%=rs0.getString("mb.cv")%>">CV</a> &nbsp; &nbsp; &nbsp;</td>
                            <a href="Downloader?name=<%=rs0.getString("mb.cv")%>">Application Form</a></td>
                        </div>   
                        
                           <div class="col-md-4" style="margin-bottom: 20px;">
                                <a href="#" class="btn btn-md btn-primary" data-toggle="modal" data-target="#largeModal">Proceed</a>
                                <!--modal interview-->
                                <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true" ">
                                <div class="modal-dialog modal-lg">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                      <h4 class="modal-title" id="myModalLabel">Confirmation</h4>
                                    </div>
                                    <div class="modal-body" style="min-height: 200px;">
                                      <form action="helper/doChangeStatus.jsp" method="post" >
                                                    <input type="hidden" value="<%=rs0.getString("tr.transactionid")%>" name="transactionid">
                                                    <input type="hidden" value="<%=rs0.getString("tr.status")%>" name="status">
                                                    <input type="hidden" value="ok" name="check">
                                                    <input type="hidden" value="<%=rs0.getString("mb.email")%>" name="email">
                                                    <input type="hidden" value="<%=rs0.getString("mb.name")%>" name="membername">
                                                    <input type="hidden" value="<%=location%>" name="location">
                                                    <input type="hidden" value="<%=rs0.getString("jb.position")%>" name="jobpos">
                                                    <input type="hidden" value="<%=rs0.getString("dp.department_name")%>" name="department">
                                                    <table style="width: 100%;">
                                                    
                                                     <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label">Candidate's Phone Number:</label>
                                                      <div class="col-sm-10">
                                                          <br>
                                                          <label control-label"><%=rs0.getString("mb.phone")%></label>
                                                      </div>
                                                    </div>
                                                    </td>
                                                    
                                                    </tr>
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label">Candidate's Email:</label>
                                                      <div class="col-sm-10">
                                                          <br>
                                                          <label control-label"><%=rs0.getString("mb.email")%></label>
                                                      </div>
                                                    </div>
                                                    </td>
                                                    
                                                    </tr>  
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Interview Date</label>
                                                      <div class="col-sm-10">
                                                        <input type="date" name="idate"  class="form-control" id="idate">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>    
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group" >
                                                      <label class="col-sm-2 control-label" for="textinput">Interview Time </label>
                                                      <div class="col-sm-10">
                                                        <input type="text" placeholder="e.g:  09.00 AM/PM" name="itime" class="form-control" id="itime">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>         
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Venue</label>
                                                      <div class="col-sm-10">
                                                        <input type="text" placeholder="Input Address" name="venue" class="form-control" id="ivenue">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>        
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Interviewer's Name</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="Input Name" name="iname" class="form-control" id="iname">
                                                      </div>

                                                      <label class="col-sm-2 control-label" for="textinput">Interviewer's Email</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="Input Email" name="iemail" class="form-control" id="iemail">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Interviewer's Phone</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="Input Interviewer's Phone Number" name="iphone" class="form-control" id="iphone">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>    
                                                    </table>
                                    </div>
                                    <div class="modal-footer" style="background-color: white;">
                                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                      <input type="submit" class="btn btn-md btn-primary" value="Proceed" id="submit1">
                                      </form>
                                    </div>
                                  </div>
                                </div>
                                </div>
                                <!--end of modal interview-->
                           </div>
                           <div class="col-md-4">
                                <a data-toggle="modal" data-target="#cancel-modal" href="#submit-modal" class="btn btn-default">Reject</a>
                                <div class="modal fade product_view" id="cancel-modal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <a href="#" data-dismiss="modal" class="class pull-right" style="color: black;"><span class="glyphicon glyphicon-remove"></span></a>
                                                <h3 class="modal-title">Confirmation</h3>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-12" >
                                                        <h3>Are you sure want to reject this candidate ?</h3>
                                                    <br>
                                                    <form action="helper/doChangeStatus.jsp" method="post">
                                                         <div id="wrapperdiv">
                                                         <input type="checkbox" value="checkyes" id="checkyes" name="checkyes" onclick="showMe('note')">&nbsp;Check here to reject & blacklist this candidate
                                                         <br>
                                                         <br>
                                                             <textarea id="note" name="note" rows="5" cols="50" placeholder="Reason:" style="display: none;"></textarea>  
                                                         <br>
                                                         <br>
                                                         <input type="hidden" value="<%=rs0.getString("tr.transactionid")%>" name="transactionid">
                                                         <input type="hidden" value="<%=rs0.getString("tr.status")%>" name="status">
                                                         <input type="hidden" value="no" name="check">
                                                         <input type="hidden" value="<%=rs0.getString("mb.email")%>" name="email">  
                                                         <input type="hidden" value="<%=rs0.getString("mb.name")%>" name="membername">
                                                         <input type="hidden" value="<%=location%>" name="location">
                                                         <input type="hidden" value="<%=rs0.getString("jb.position")%>" name="jobpos">
                                                         <input type="hidden" value="<%=rs0.getString("dp.department_name")%>" name="department">
                                                         <input type="submit" class="btn btn-md btn-primary" value="  Yes   " id="rejectsubmit">
                                                         <a href="#" class="btn btn-default" data-dismiss="modal">No</a>
                                                         </div>
                                                    </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           </div>    
                           <div class="col-md-4" style="padding:0px;">
                                <form action="helper/doChangeStatus.jsp" method="post">
                                     <input type="hidden" value="<%=rs0.getString("tr.transactionid")%>" name="transactionid">
                                     <input type="hidden" value="<%=rs0.getString("tr.status")%>" name="status">
                                     <input type="hidden" value="hold" name="check">
                                     <input type="hidden" value="<%=rs0.getString("mb.email")%>" name="email">
                                     <input type="hidden" value="<%=rs0.getString("mb.name")%>" name="membername">
                                     <input type="hidden" value="<%=location%>" name="location"></input>
                                     <input type="hidden" value="<%=rs0.getString("jb.position")%>" name="jobpos">
                                     <input type="hidden" value="<%=rs0.getString("dp.department_name")%>" name="department">
                                     <input type="submit" class="btn btn-md btn-primary" value="  Hold   ">
                                </form>
                    </div>
                        <br>
                    </div>
                        <%
                                }
                            }
                        %>
                        <div class="col-md-12">
                        <br>
                        <br>
                        <p style="text-align:center">
                        <%
			for(int i=1;i<=totalPage;i++)
			{
			%>
                        <a href = "hiring.jsp?unit=<%=unitlocation%>&process=Init. Qualification&page=<%=i%>" style="text-decoration:none; padding-right:3px"> <%=i%> </a>
                        <%   
                        }
			%>
                        <br />
                        <br />
                        </div>
                        <%
                            }
                        %>
                </div>
        
        <%
             
            
             String query1 = "select * from reschedules re join transactions tr on re.transactionid = tr.transactionid join members mb on tr.userid = mb.userid join jobs jb on tr.jobid = jb.jobid join departments dp on jb.departmentid = dp.departmentid where jb.location = '"+unitlocation+"' and tr.status = '1' ";
             ResultSet rs1 = st.executeQuery(query1);
             String date1="";
             String date2="";
             String time1="";
             String time2="";
             if(request.getParameter("process").equals("HR Interview"))
             {
        %>
                <!-- step 2 -->
                <div class="col-lg-12 box">
                     
                    <%
                                rs1.last();
				int totalData = rs1.getRow();
				int dataPerPage = 10;
				int currentPage = 1;
				int totalPage = (int) Math.ceil((double)totalData/(double)dataPerPage);     
			
				
			
				if(request.getParameter("page") != null)
				{
					currentPage = Integer.parseInt(request.getParameter("page"));
				}

				rs1.beforeFirst();
                        while(rs1.next())
                        {
                            if(rs1.getRow() <= currentPage * dataPerPage && rs1.getRow() > (currentPage-1)*dataPerPage)
                            {
                    %>
                    <div class="col-md-5 inside-box" style="margin-left: 6%; margin-top: 50px;">
                        <div class="col-md-12" style="margin-top: 20px; margin-bottom: 20px;">
                            <b>Name:</b>&nbsp;<%=rs1.getString("mb.name")%>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Prev Company:</b>&nbsp;<%=rs1.getString("mb.prev_company")%>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Last Position:</b>&nbsp;<%=rs1.getString("mb.prev_position")%>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                           <b>Applied for:</b>&nbsp;<%=rs1.getString("jb.position")%>
                       </div>
                        
                            <%
                                
                                
                                if(rs1.getString("re.status").equals("requested"))
                                {
                                    
                            %>
                                    <div class="col-md-12" style="margin-bottom: 20px;">
                                          <b style="color: blue;">Requesting Reschedule<b>
                                    </div>
                            <%
                                   
                                }
                                else
                                {
                            %>
                                 <div class="col-md-12" style="margin-bottom: 20px;">
                                     <br>
                                 </div>

                            <%
                                }
                            %>
                          
                            
                       
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>File:</b>&nbsp;
                            <a href="Downloader?name=<%=rs1.getString("mb.cv")%>">CV</a> &nbsp; &nbsp; &nbsp;
                            <a href="Downloader?name=<%=rs1.getString("mb.cv")%>">Application Form</a> &nbsp;
                            
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Interview Date, Venue and By:</b><br>
                            <%=rs1.getString("tr.hr_interview_date")%>&nbsp;,&nbsp;
                            <%=rs1.getString("tr.hr_interview_time")%>&nbsp;,&nbsp;
                            <%=rs1.getString("tr.hr_interview_venue")%><br>
                            <%=rs1.getString("tr.hr_interviewer_name")%><br>
                            <a data-toggle="modal" href="#myModal3">Reschedule</a></td>
                        </div>
                            <div class="modal" id="myModal3" data-backdrop="static">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                      <h4 class="modal-title">Reschedule Interview</h4>
                                    </div>
                                    <div class="modal-body" style="min-height: 300px;">
                                        <form action="helper/doReschedule.jsp" method="post">
                                            <input type="hidden" value="<%=rs1.getString("tr.status")%>" name="status">
                                            <input type="hidden" value="<%=rs1.getString("tr.transactionid")%>" name="transactionid">
                                            <input type="hidden" value="<%=location%>" name="location">  
                                            
                                              <%
                                
                                
                                                        if(rs1.getString("re.status").equals("requested"))
                                                        {
                                                            date1 = rs1.getString("re.option_date1");
                                                            date2 = rs1.getString("re.option_date2");
                                                            time1 = rs1.getString("re.option_time1");
                                                            time2 = rs1.getString("re.option_time2");
                                              %>
                                              <div class="col-sm-12">
                                                  <h4>Option 1</h4>
                                              </div>
                                              <div class="col-sm-3" >
                                                  Requested Date
                                              </div>
                                              <div class="col-sm-3">
                                                  <%=date1%>
                                              </div>
                                              
                                              <div class="col-sm-3">
                                                  Requested Time
                                              </div>
                                              <div class="col-sm-3">
                                                  <%=time1%>
                                              </div>
                                              <div class="col-sm-12">
                                                  <h4>Option 2</h4>
                                              </div>
                                              <div class="col-sm-3" >
                                                  Requested Date
                                              </div>
                                              <div class="col-sm-3">
                                                  <%=date2%>
                                              </div>
                                              
                                              <div class="col-sm-3">
                                                  Requested Time
                                              </div>
                                              <div class="col-sm-3">
                                                  <%=time2%>
                                              </div>
                                              <%
                                                        }
                                              %>
                                            <div class="col-sm-4" style="margin-top: 50px;">
                                                Candidate's Phone
                                            </div>
                                            <div class="col-sm-8" style="margin-top: 50px;">
                                                <%=rs1.getString("mb.phone")%>
                                            </div>
                                            <div class="col-sm-12">
                                                &nbsp;
                                            </div>
                                            <div class="col-sm-4">
                                                Candidate's Email
                                            </div>
                                            <div class="col-sm-8">
                                                <%=rs1.getString("mb.email")%>
                                            </div>
                                            <div class="col-sm-12">
                                                &nbsp;
                                            </div>
                                            <div class="col-sm-4" >
                                                Input New Date
                                            </div>
                                            <div class="col-sm-8">
                                                <input type="date" name="date" class="input">
                                            </div>
                                            <div class="col-sm-12">
                                                &nbsp;
                                            </div>
                                            
                                            <div class="col-sm-4">
                                                Input New Time
                                            </div>
                                            <div class="col-sm-8">
                                                <input type="text" name="time" placeholder="e.g:  09.00 AM" class="input">
                                            </div>
                                            
                                        
                                    </div>
                                    <div class="modal-footer" style="background-color: white;">
                                      <a href="#" data-dismiss="modal" class="btn btn-default">Close</a>
                                      <input type="submit" class="btn btn-primary" value="Save" id="submit3">
                                      </form>
                                    </div>
                                  </div>
                                </div>
                            </div>
                            
                        
                        <div class="col-md-4">
                           
                           <a href="#" class="btn btn-md btn-primary" data-toggle="modal" data-target="#largeModal1" style="width:74.64">Proceed</a>
                                <!--modal interview-->
                                <div class="modal fade" id="largeModal1" tabindex="-1" role="dialog" aria-labelledby="largeModal1" aria-hidden="true" ">
                                <div class="modal-dialog modal-lg">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                      <h4 class="modal-title" id="myModalLabel">Confirmation</h4>
                                    </div>
                                    <div class="modal-body" style="min-height: 200px;">
                                      <form action="helper/doChangeStatus.jsp" method="post" >
                                                    <input type="hidden" value="<%=rs1.getString("tr.transactionid")%>" name="transactionid">
                                                    <input type="hidden" value="<%=rs1.getString("tr.status")%>" name="status">
                                                    <input type="hidden" value="ok" name="check">
                                                    <input type="hidden" value="<%=rs1.getString("mb.email")%>" name="email">
                                                    <input type="hidden" value="<%=rs1.getString("mb.name")%>" name="membername">
                                                    <input type="hidden" value="<%=location%>" name="location">
                                                    <input type="hidden" value="<%=rs1.getString("jb.position")%>" name="jobpos">
                                                    <input type="hidden" value="<%=rs1.getString("dp.department_name")%>" name="department">    
                                                    <table style="width: 100%;">
                                                     
                                                   
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label">Candidate's Phone Number:</label>
                                                      <div class="col-sm-10">
                                                          <br>
                                                          <label control-label"><%=rs1.getString("mb.phone")%></label>
                                                      </div>
                                                    </div>
                                                    </td>
                                                    
                                                    </tr>
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label">Candidate's Email:</label>
                                                      <div class="col-sm-10">
                                                          <br>
                                                          <label control-label"><%=rs1.getString("mb.email")%></label>
                                                      </div>
                                                    </div>
                                                    </td>
                                                    
                                                    </tr>  
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Interview Date</label>
                                                      <div class="col-sm-10">
                                                        <input type="date" name="udate"  class="form-control" id="udate">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>    
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group" >
                                                      <label class="col-sm-2 control-label" for="textinput">Interview Time </label>
                                                      <div class="col-sm-10">
                                                        <input type="text" placeholder="e.g:  09.00 AM/PM" name="utime" class="form-control" id="utime">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>         
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Venue</label>
                                                      <div class="col-sm-10">
                                                        <input type="text" placeholder="Input Address" name="uvenue" class="form-control" id="uvenue">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>        
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Interviewer's Name (User)</label>
                                                      <div class="col-sm-4">
                                                          <input type="text" placeholder="Input Name (User)" name="uname" class="form-control" id="uname">
                                                      </div>

                                                      <label class="col-sm-2 control-label" for="textinput">Interviewer's Email (User)</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="Input Email (User)" name="uemail" class="form-control" id="uemail">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Interviewer's Phone (User)</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="Input Interviewer's Phone Number" name="uphone" class="form-control" id="iphone">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>  
                                                    </table>
                                    </div>
                                    <div class="modal-footer" style="background-color: white;">
                                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                      <input type="submit" class="btn btn-md btn-primary" value="Proceed" id="submit2">
                                      </form>
                                    </div>
                                  </div>
                                </div>
                                </div>
                                <!--end of modal interview-->
                        </div>       
                        <div class="col-md-4">
                                <a data-toggle="modal" data-target="#cancel-modal" href="#submit-modal" class="btn btn-default">Reject</a>
                                <div class="modal fade product_view" id="cancel-modal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <a href="#" data-dismiss="modal" class="class pull-right" style="color: black;"><span class="glyphicon glyphicon-remove"></span></a>
                                                <h3 class="modal-title">Confirmation</h3>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-12" >
                                                        <h3>Are you sure want to reject this candidate ?</h3>
                                                    <br>
                                                    <form action="helper/doChangeStatus.jsp" method="post">
                                                         <div id="wrapperdiv">
                                                         <input type="checkbox" value="checkyes" id="checkyes" name="checkyes" onclick="showMe('note')">&nbsp;Check here to reject & blacklist this candidate
                                                         <br>
                                                         <br>
                                                             <textarea id="note" name="note" rows="5" cols="50" placeholder="Reason:" style="display: none;"></textarea>  
                                                         <br>
                                                         <br>
                                                         <input type="hidden" value="<%=rs1.getString("tr.transactionid")%>" name="transactionid">
                                                         <input type="hidden" value="<%=rs1.getString("tr.status")%>" name="status">
                                                         <input type="hidden" value="no" name="check">
                                                         <input type="hidden" value="<%=rs1.getString("mb.email")%>" name="email">  
                                                         <input type="hidden" value="<%=rs1.getString("mb.name")%>" name="membername">
                                                         <input type="hidden" value="<%=location%>" name="location">
                                                         <input type="hidden" value="<%=rs1.getString("jb.position")%>" name="jobpos">
                                                         <input type="hidden" value="<%=rs1.getString("dp.department_name")%>" name="department">
                                                         <input type="submit" class="btn btn-md btn-primary" value="  Yes   " id="rejectsubmit">
                                                         <a href="#" class="btn btn-default" data-dismiss="modal">No</a>
                                                         </div>
                                                    </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                        </div>
                        <div class="col-md-4">
                                <form action="helper/doChangeStatus.jsp" method="post">
                                     <input type="hidden" value="<%=rs1.getString("tr.transactionid")%>" name="transactionid">
                                     <input type="hidden" value="<%=rs1.getString("tr.status")%>" name="status">
                                     <input type="hidden" value="hold" name="check">
                                     <input type="hidden" value="<%=rs1.getString("mb.email")%>" name="email">
                                     <input type="hidden" value="<%=rs1.getString("mb.name")%>" name="membername">
                                     <input type="hidden" value="<%=location%>" name="location">
                                     <input type="hidden" value="<%=rs1.getString("jb.position")%>" name="jobpos">
                                     <input type="hidden" value="<%=rs1.getString("dp.department_name")%>" name="department">
                                     <input type="submit" class="btn btn-md btn-primary" value="  Hold   ">
                                </form>
                        </div>
                        <br>
                    </div>
                        <%
                            }
                            }
                        %>
                        <div class="col-md-12">
                        <br>
                        <br>
                        <p style="text-align:center">
                        <%
			for(int i=1;i<=totalPage;i++)
			{
			%>
                        <a href = "hiring.jsp?unit=<%=unitlocation%>&process=HR Interview&page=<%=i%>" style="text-decoration:none; padding-right:3px"> <%=i%> </a>
                        <%   
                        }
			%>
                        <br />
                        <br />
                        </div>
                        <%
                            }
                        %>
                </div>
                
        <%
            String query2 = "select * from reschedules re join transactions tr on re.transactionid = tr.transactionid join members mb on tr.userid = mb.userid join jobs jb on tr.jobid = jb.jobid join departments dp on jb.departmentid = dp.departmentid where jb.location = '"+unitlocation+"' and tr.status = '2' ";
            ResultSet rs2 = st.executeQuery(query2);
            if(request.getParameter("process").equals("User Interview"))
            {
        %>
                <!-- step 3 -->
                <div class="col-lg-12 box1">
                    
                    <%
                                rs2.last();
				int totalData = rs2.getRow();
				int dataPerPage = 10;
				int currentPage = 1;
				int totalPage = (int) Math.ceil((double)totalData/(double)dataPerPage);     
			
				
			
				if(request.getParameter("page") != null)
				{
					currentPage = Integer.parseInt(request.getParameter("page"));
				}

				rs2.beforeFirst();
                        while(rs2.next())
                        {
                            if(rs2.getRow() <= currentPage * dataPerPage && rs2.getRow() > (currentPage-1)*dataPerPage)
                            {
                    %>
                     <div class="col-md-5 inside-box" style="margin-left: 6%; margin-top: 50px;">
                        <div class="col-md-12" style="margin-top: 20px; margin-bottom: 20px;">
                            <b>Name:</b>&nbsp;<%=rs2.getString("mb.name")%>
                        </div>    
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Prev Company:</b>&nbsp;<%=rs2.getString("mb.prev_company")%>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Last Position:</b>&nbsp;<%=rs2.getString("mb.prev_position")%>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                           <b>Applied for:</b>&nbsp;<%=rs2.getString("jb.position")%>
                       </div>
                            <%
                                
                                
                                if(rs2.getString("re.status").equals("requested"))
                                {
                                    
                            %>
                                    <div class="col-md-12" style="margin-bottom: 20px;">
                                          <b style="color: blue;">Requesting Reschedule</b>
                                    </div>
                            <%
                                   
                                }
                                 else
                                {
                            %>
                                 <div class="col-md-12" style="margin-bottom: 20px;">
                                     <br>
                                 </div>

                            <%
                                }
                            %>
                          
                          
                            
                       
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>File:</b>&nbsp;
                            <a href="Downloader?name=<%=rs2.getString("mb.cv")%>">CV</a> &nbsp; &nbsp; &nbsp;
                            <a href="Downloader?name=<%=rs2.getString("mb.cv")%>">Application Form</a> &nbsp;
                            
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Interview Date, Venue and By:</b><br>
                                <%=rs2.getString("tr.user_interview_date")%>&nbsp;,&nbsp;
                                <%=rs2.getString("tr.user_interview_time")%>&nbsp;,&nbsp;
                                <%=rs2.getString("tr.user_interview_venue")%><br>
                                <%=rs2.getString("tr.user_interviewer_name")%><br>
                            <a data-toggle="modal" href="#myModal3">Reschedule</a></td>
                        </div>
                            <div class="modal" id="myModal3" data-backdrop="static">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                      <h4 class="modal-title">Reschedule Interview</h4>
                                    </div>
                                    <div class="modal-body" style="min-height: 300px;">
                                        <form action="helper/doReschedule.jsp" method="post">
                                            <input type="hidden" value="<%=rs2.getString("tr.status")%>" name="status">
                                            <input type="hidden" value="<%=rs2.getString("tr.transactionid")%>" name="transactionid">
                                            <input type="hidden" value="<%=location%>" name="location">  
                                            
                                              <%
                                
                                
                                                        if(rs2.getString("re.status").equals("requested"))
                                                        {
                                                            date1 = rs2.getString("re.option_date1");
                                                            date2 = rs2.getString("re.option_date2");
                                                            time1 = rs2.getString("re.option_time1");
                                                            time2 = rs2.getString("re.option_time2");
                                              %>
                                              <div class="col-sm-12">
                                                  <h4>Option 1</h4>
                                              </div>
                                              <div class="col-sm-3" >
                                                  Requested Date
                                              </div>
                                              <div class="col-sm-3">
                                                  <%=date1%>
                                              </div>
                                              
                                              <div class="col-sm-3">
                                                  Requested Time
                                              </div>
                                              <div class="col-sm-3">
                                                  <%=time1%>
                                              </div>
                                              <div class="col-sm-12">
                                                  <h4>Option 2</h4>
                                              </div>
                                              <div class="col-sm-3" >
                                                  Requested Date
                                              </div>
                                              <div class="col-sm-3">
                                                  <%=date2%>
                                              </div>
                                              
                                              <div class="col-sm-3">
                                                  Requested Time
                                              </div>
                                              <div class="col-sm-3">
                                                  <%=time2%>
                                              </div>
                                              <%
                                                        }
                                              %>
                                            <div class="col-sm-4" style="margin-top: 50px;">
                                                Candidate's Phone
                                            </div>
                                            <div class="col-sm-8" style="margin-top: 50px;">
                                                <%=rs2.getString("mb.phone")%>
                                            </div>
                                            <div class="col-sm-12">
                                                &nbsp;
                                            </div>
                                            <div class="col-sm-4">
                                                Candidate's Email
                                            </div>
                                            <div class="col-sm-8">
                                                <%=rs2.getString("mb.email")%>
                                            </div>
                                            <div class="col-sm-12">
                                                &nbsp;
                                            </div>
                                            <div class="col-sm-4">
                                                Input New Date
                                            </div>
                                            <div class="col-sm-8">
                                                <input type="date" name="date" class="input">
                                            </div>
                                            <div class="col-sm-12">
                                                &nbsp;
                                            </div>
                                            <div class="col-sm-4">
                                                Input New Time
                                            </div>
                                            <div class="col-sm-8">
                                                <input type="text" name="time" placeholder="e.g:  09.00 AM" class="input">
                                            </div>
                                            
                                        
                                    </div>
                                    <div class="modal-footer" style="background-color: white;">
                                      <a href="#" data-dismiss="modal" class="btn btn-default">Close</a>
                                      <input type="submit" class="btn btn-primary" value="Save" id="submit3">
                                      </form>
                                    </div>
                                  </div>
                                </div>
                            </div>
                            
                        
                        <div class="col-md-4">
                            <form action="helper/doChangeStatus.jsp">
                                    <input type="hidden" value="<%=rs2.getString("tr.transactionid")%>" name="transactionid">
                                    <input type="hidden" value="<%=rs2.getString("tr.status")%>" name="status">
                                    <input type="hidden" value="ok" name="check">
                                    <input type="hidden" value="<%=rs2.getString("mb.email")%>" name="email">
                                    <input type="hidden" value="<%=rs2.getString("mb.name")%>" name="membername">
                                    <input type="hidden" value="<%=location%>" name="location">
                                    <input type="hidden" value="<%=rs2.getString("jb.position")%>" name="jobpos">
                                    <input type="hidden" value="<%=rs2.getString("dp.department_name")%>" name="department">
                                    <input type="submit" class="btn btn-md btn-primary" value="Proceed">
                                </form>
                        </div>       
                        <div class="col-md-4">
                                <a data-toggle="modal" data-target="#cancel-modal" href="#submit-modal" class="btn btn-default">Reject</a>
                                <div class="modal fade product_view" id="cancel-modal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <a href="#" data-dismiss="modal" class="class pull-right" style="color: black;"><span class="glyphicon glyphicon-remove"></span></a>
                                                <h3 class="modal-title">Confirmation</h3>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-12" >
                                                        <h3>Are you sure want to reject this candidate ?</h3>
                                                    <br>
                                                    <form action="helper/doChangeStatus.jsp" method="post">
                                                         <div id="wrapperdiv">
                                                         <input type="checkbox" value="checkyes" id="checkyes" name="checkyes" onclick="showMe('note')">&nbsp;Check here to reject & blacklist this candidate
                                                         <br>
                                                         <br>
                                                             <textarea id="note" name="note" rows="5" cols="50" placeholder="Reason:" style="display: none;"></textarea>  
                                                         <br>
                                                         <br>
                                                         <input type="hidden" value="<%=rs2.getString("tr.transactionid")%>" name="transactionid">
                                                         <input type="hidden" value="<%=rs2.getString("tr.status")%>" name="status">
                                                         <input type="hidden" value="no" name="check">
                                                         <input type="hidden" value="<%=rs2.getString("mb.email")%>" name="email">  
                                                         <input type="hidden" value="<%=rs2.getString("mb.name")%>" name="membername">
                                                         <input type="hidden" value="<%=location%>" name="location">
                                                         <input type="hidden" value="<%=rs2.getString("jb.position")%>" name="jobpos">
                                                         <input type="hidden" value="<%=rs2.getString("dp.department_name")%>" name="department">
                                                         <input type="submit" class="btn btn-md btn-primary" value="  Yes   " id="rejectsubmit">
                                                         <a href="#" class="btn btn-default" data-dismiss="modal">No</a>
                                                         </div>
                                                    </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                        </div>
                        <div class="col-md-4">
                                <form action="helper/doChangeStatus.jsp" method="post">
                                     <input type="hidden" value="<%=rs2.getString("tr.transactionid")%>" name="transactionid">
                                     <input type="hidden" value="<%=rs2.getString("tr.status")%>" name="status">
                                     <input type="hidden" value="hold" name="check">
                                     <input type="hidden" value="<%=rs2.getString("mb.email")%>" name="email">
                                     <input type="hidden" value="<%=rs2.getString("mb.name")%>" name="membername">
                                     <input type="hidden" value="<%=location%>" name="location">
                                     <input type="hidden" value="<%=rs2.getString("jb.position")%>" name="jobpos">
                                     <input type="hidden" value="<%=rs2.getString("dp.department_name")%>" name="department">
                                     <input type="submit" class="btn btn-md btn-primary" value="  Hold   ">
                                </form>
                        </div>
                        <br>
                    </div>
                        <%
                            }
                            }
                        %>
                        <div class="col-md-12">
                        <br>
                        <br>
                        <p style="text-align:center">
                        <%
			for(int i=1;i<=totalPage;i++)
			{
			%>
                        <a href = "hiring.jsp?unit=<%=unitlocation%>&process=User Interview&page=<%=i%>" style="text-decoration:none; padding-right:3px"> <%=i%> </a>
                        <%   
                        }
			%>
                        <br />
                        <br />
                        </div>
                        <%
                            }
                        %>
                </div>
        <%
            String query3 = "select * from transactions tr join members mb on tr.userid = mb.userid join jobs jb on tr.jobid = jb.jobid join departments dp on jb.departmentid = dp.departmentid where jb.location = '"+unitlocation+"' and tr.status = '4' ";
            ResultSet rs3 = st.executeQuery(query3);
            if(request.getParameter("process").equals("Offering Contract"))
            {
                
        %>         
                <!-- step 4 -->
                <div class="col-lg-12 box">
                   
                    <%
                           rs3.last();
				int totalData = rs3.getRow();
				int dataPerPage = 10;
				int currentPage = 1;
				int totalPage = (int) Math.ceil((double)totalData/(double)dataPerPage);     
			
				
			
				if(request.getParameter("page") != null)
				{
					currentPage = Integer.parseInt(request.getParameter("page"));
				}

				rs3.beforeFirst();
                        
                        while(rs3.next())
                        {
                             if(rs3.getRow() <= currentPage * dataPerPage && rs3.getRow() > (currentPage-1)*dataPerPage)
				  {
                    %>
                     <div class="col-md-5 inside-box" style="margin-left: 6%; margin-top: 50px;">
                        <div class="col-md-12" style="margin-top: 20px; margin-bottom: 20px;">
                            <b>Name:</b>&nbsp;<%=rs3.getString("mb.name")%>
                        </div>
                       <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Prev Company:</b>&nbsp;<%=rs3.getString("mb.prev_company")%>
                       </div>    
                       <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Last Position:</b>&nbsp;<%=rs3.getString("mb.prev_position")%>
                       </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>File:</b>&nbsp; &nbsp;<a href="Downloader?name=<%=rs3.getString("mb.cv")%>">CV</a> &nbsp; &nbsp; &nbsp;
                            <a href="Downloader?name=<%=rs3.getString("mb.cv")%>">Application Form</a>
                        </div>
                        
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Applied for:</b>&nbsp;<br><%=rs3.getString("dp.department_name")%><br>
                                <%=rs3.getString("jb.position")%><br>
                                    <%=rs3.getString("jb.location")%><br>
                        </div>
                          <div class="col-md-3" style="margin-bottom: 20px;">
                                <a href="#" class="btn btn-md btn-primary" data-toggle="modal" data-target="#largeModalletter">Generate OL</a>
                                
                                <div class="modal fade" id="largeModalletter" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true" ">
                                <div class="modal-dialog modal-lg">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                      <h4 class="modal-title" id="myModalLabel">letter</h4>
                                    </div>
                                    <div class="modal-body" style="min-height: 200px;">
                                     <form action="testPDF.jsp" target="_blank" method="post">
                                     <input type="hidden" value="<%=rs3.getString("tr.transactionid")%>" name="transactionid">
                                     <input type="hidden" value="<%=rs3.getString("tr.status")%>" name="status">
                                     <input type="hidden" value="hold" name="check">
                                     <input type="hidden" value="<%=rs3.getString("mb.email")%>" name="email">
                                     <input type="hidden" value="<%=rs3.getString("mb.name")%>" name="membername">
                                     <input type="hidden" value="<%=location%>" name="location">
                                     <input type="hidden" value="<%=rs3.getString("jb.location")%>" name="loc">
                                     <input type="hidden" value="<%=rs3.getString("jb.position")%>" name="jobpos">
                                     <input type="hidden" value="<%=rs3.getString("dp.department_name")%>" name="department">
                                     
                         
                                                    <table style="width: 100%;">
                                                    <%
                                                        if(!rs3.getString("tr.ol_reject_reason").equals("-") && !rs3.getString("tr.ol_filename").equals("no data"))
                                                        {
                                                    %>
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Prev Rejection Reason</label>
                                                      <div class="col-sm-10">
                                                        <label class="col-sm-2 control-label" for="textinput"><%=rs3.getString("tr.ol_reject_reason")%></label>
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>    
                                                     
                                                    
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Prev Offered Contract</label>
                                                      <div class="col-sm-10">
                                                        <label class="col-sm-2 control-label" for="textinput"><a href="Downloader?name=<%=rs3.getString("tr.ol_filename")%>&file=contract">Download Here</a></label>
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>  
                                                    <%
                                                      }
                                                    %>
                                                    
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">City</label>
                                                      <div class="col-sm-10">
                                                        <input type="text" name="city" placeholder="eg: Jakarta"  class="form-control" id="city">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>    
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group" >
                                                      <label class="col-sm-2 control-label" for="textinput">Reporting to</label>
                                                      <div class="col-sm-10">
                                                        <input type="text" placeholder="VP HR" name="report" class="form-control" id="report">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>         
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Employment Type</label>
                                                      <div class="col-sm-10">
                                                        <input type="text" placeholder="eg: Contract – 1 (one) year" name="etype" class="form-control" id="etype">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>        
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Basic Salary</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="eg: 1.200.000,-" name="bsalary" class="form-control" id="iname">
                                                      </div>

                                                      <label class="col-sm-2 control-label" for="textinput">Basic Salary (text)</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="eg: satu juta dua ratus ribu rupiah" name="bsalary_text" class="form-control" id="bsalary_text">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Allowances</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="eg: 1.200.000,-" name="allowances" class="form-control" id="allowances">
                                                      </div>
                                                      <label class="col-sm-2 control-label" for="textinput">Allowances (text)</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="eg: satu juta dua ratus ribu rupiah" name="allowances_text" class="form-control" id="allowances_text">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>
                                                    <tr>
                                                    <!-- Text input-->
                                                    <td>
                                                    <div class="form-group">
                                                      <label class="col-sm-2 control-label" for="textinput">Commencement Date</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="eg: 21 September 2018" name="cdate" class="form-control" id="cdate">
                                                      </div>
                                                      <label class="col-sm-2 control-label" for="textinput">Agreement Date</label>
                                                      <div class="col-sm-4">
                                                        <input type="text" placeholder="eg: 12 September 2018" name="adate" class="form-control" id="adate">
                                                      </div>
                                                    </div>
                                                    </td>   
                                                    </tr>    
                                                    </table>
                                    </div>
                                    <div class="modal-footer" style="background-color: white;">
                                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                      <input type="submit" class="btn btn-md btn-primary" value="  Generate Form   ">
                                      </form>
                                    </div>
                                  </div>
                                </div>
                                </div>
                                <!--end of modal interview-->
                                
                            </div>
                        
                        <div class="col-md-3">
                                
                                        
                                    <%
                                        if(rs3.getString("ol_status").equals("sent"))
                                        {
                                    %>
                                             <a data-toggle="modal" data-target="#submit-modal12" href="#submit-modal12" class="btn btn-warning">Send OL<a>
                                             <div class="modal fade product_view" id="submit-modal12">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
                                                            <h3 class="modal-title">Please complete file below</h3>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                 <form name="uploadForm" action="UploaderOL" method="post" enctype="multipart/form-data">
                                                                    
                                                                    <input type="hidden" name="transactionid" value="<%=rs3.getString("tr.transactionid")%>">
                                                                    <input type="hidden" name="email" value="<%=rs3.getString("mb.email")%>">
                                                                    <input type="hidden" name="name" value="<%=rs3.getString("mb.name")%>">
                                                                    <input type="hidden" name="status" value="4">
                                                                    <input type="hidden" name="loc" value="<%=rs3.getString("jb.location")%>">
                                                                    <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12">
                                                                    <div class="full-width" id="wrapperhats">
                                                                    <input type="file" id="file1" name="file1" class="form-control form-input form-style-base">
                                                                    <input type="text" id="fake-input" class="form-control form-input form-style-fake" placeholder="Upload OL" readonly>
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
                                    <%
                                         }
                                    %>
                                
   
                        </div>
                        
                        <div class="col-md-3">
                                <a data-toggle="modal" data-target="#cancel-modal" href="#submit-modal" class="btn btn-default">Reject</a>
                                <div class="modal fade product_view" id="cancel-modal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <a href="#" data-dismiss="modal" class="class pull-right" style="color: black;"><span class="glyphicon glyphicon-remove"></span></a>
                                                <h3 class="modal-title">Confirmation</h3>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-12" >
                                                        <h3>Are you sure want to reject this candidate ?</h3>
                                                    <br>
                                                    <form action="helper/doChangeStatus.jsp" method="post">
                                                         <div id="wrapperdiv">
                                                         <input type="checkbox" value="checkyes" id="checkyes" name="checkyes" onclick="showMe('note')">&nbsp;Check here to reject & blacklist this candidate
                                                         <br>
                                                         <br>
                                                             <textarea id="note" name="note" rows="5" cols="50" placeholder="Reason:" style="display: none;"></textarea>  
                                                         <br>
                                                         <br>
                                                         <input type="hidden" value="<%=rs3.getString("tr.transactionid")%>" name="transactionid">
                                                         <input type="hidden" value="<%=rs3.getString("tr.status")%>" name="status">
                                                         <input type="hidden" value="no" name="check">
                                                         <input type="hidden" value="<%=rs3.getString("mb.email")%>" name="email">  
                                                         <input type="hidden" value="<%=rs3.getString("mb.name")%>" name="membername">
                                                         <input type="hidden" value="<%=location%>" name="location">
                                                         <input type="hidden" value="<%=rs3.getString("jb.position")%>" name="jobpos">
                                                         <input type="hidden" value="<%=rs3.getString("dp.department_name")%>" name="department">
                                                         <input type="submit" class="btn btn-md btn-primary" value="  Yes   " id="rejectsubmit">
                                                         <a href="#" class="btn btn-default" data-dismiss="modal">No</a>
                                                         </div>
                                                    </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="col-md-3">
                                <form action="helper/doChangeStatus.jsp" method="post">
                                     <input type="hidden" value="<%=rs3.getString("tr.transactionid")%>" name="transactionid">
                                     <input type="hidden" value="<%=rs3.getString("tr.status")%>" name="status">
                                     <input type="hidden" value="hold" name="check">
                                     <input type="hidden" value="<%=rs3.getString("mb.email")%>" name="email">
                                     <input type="hidden" value="<%=rs3.getString("mb.name")%>" name="membername">
                                     <input type="hidden" value="<%=location%>" name="location">
                                     <input type="hidden" value="<%=rs3.getString("jb.position")%>" name="jobpos">
                                     <input type="hidden" value="<%=rs3.getString("dp.department_name")%>" name="department">
                                     <input type="submit" class="btn btn-md btn-primary" value="  Hold   ">
                                </form>
                            </div>
                          
                        <br>
                    </div>
                        <%
                            }
                            }
                        %>
                        <div class="col-md-12">
                        <br>
                        <br>
                        <p style="text-align:center">
                        <%
			for(int i=1;i<=totalPage;i++)
			{
			%>
                        <a href = "hiring.jsp?unit=<%=unitlocation%>&process=Offering Contract&page=<%=i%>" style="text-decoration:none; padding-right:3px"> <%=i%> </a>
                        <%   
                        }
			%>
                        <br />
                        <br />
                        </div>
                        <%
                            }
                        %>
                        
                </div>
                
                
    <%
        }
    %>
    
    
    
<script type="text/javascript">
        $(document).ready(function() {
            $('#submit1').bind("click",function() 
            { 
                var idate = $('#idate').val();
                var itime = $('#itime').val(); 
                var ivenue = $('#ivenue').val();
                var iname = $('#iname').val();
                var iemail = $('#iemail').val();
                if(idate=='') 
                { 
                    alert("You haven't input the date"); 
                    return false;
                }
               
                else if(itime=='') 
                { 
                    alert("You haven't input the time"); 
                    return false;
                }
                else if(ivenue=='') 
                { 
                    alert("You haven't input the venue"); 
                    return false;
                }
                else if(iname=='') 
                { 
                    alert("You haven't input the interviewer's name"); 
                    return false;
                }
                else if(iemail=='') 
                { 
                    alert("You haven't input the interviewer's email "); 
                    return false;
                }
                else{
                    return true; 
                }

            }); 
            
            $('#submit2').bind("click",function() 
            { 
                var udate = $('#udate').val();
                var utinme = $('#utime').val(); 
                var uvenue = $('#uvenue').val();
                var uname = $('#uname').val();
                var uemail = $('#uemail').val();
                if(udate=='') 
                { 
                    alert("You haven't input the date"); 
                    return false;
                }
               
                else if(utime=='') 
                { 
                    alert("You haven't input the time"); 
                    return false;
                }
                else if(uvenue=='') 
                { 
                    alert("You haven't input the venue"); 
                    return false;
                }
                else if(uname=='') 
                { 
                    alert("You haven't input the interviewer's name"); 
                    return false;
                }
                else if(uemail=='') 
                { 
                    alert("You haven't input the interviewer's email "); 
                    return false;
                }
                else{
                    return true; 
                }

            });
            
           $("#wrapperdiv").on("click", "#checkyes", function()
            { 
                
                
               
                if ($('#checkyes').is(':checked')) {
                     $("#note").show();
                }
                if (!$('#checkyes').is(':checked')) {
                     $("#note").hide();
                }
               
               
               
            }); 
            
            $('#rejectsubmit').bind("click",function() 
            { 
                var text = $('#note').val();
                
               if ($('#checkyes').is(':checked') && text =='') 
                {
                    alert("You have to input the reason for blacklisting this candidate"); 
                    return false;
                }
               else
                {
                    return true; 
                }
               
                

            });
            
        });
        </script> 
    
        
        
        
    
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
        
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>

</body>
</html>