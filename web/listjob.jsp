<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
	
	.button {
     background:none!important;
     color:inherit;
     border:none; 
     padding:0!important;
     font: inherit;
     /*border is optional*/
     border-bottom:1px solid #444; 
     cursor: pointer;
	 }
	 
	 .single-article .article-container-inner {
		background: #f0eded;
		border: 1px solid #936444;
		margin-bottom: 20px;
	}
	.single-article hr {
	
		border: 0;
		border-top: 1px solid #936444;
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
        select.select1{
            height: 100%;
            font-size: 15px;
            padding: 6px;
        }
        
       
        
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
	String department_name=request.getParameter("name");
	String search =  request.getParameter("search");
	String location = request.getParameter("location");
	String position = request.getParameter("position");
	String query="";
%>
<div class="container" style="min-height:500px; margin-top:100px;">
	 <div class="col-lg-12" style="padding:0px; margin-bottom:50px;">
        <form class="form-inline" action="helper/doSearch.jsp" method="post">
                        <select class="form-control select1" style="width:20%;" name="filter">
                            <option value="position">Position</option>
                            <option value="location">Location</option>
                        </select>
                    
                    
                       <div class="input-group custom-search-form" style="width:79%;">
                            <input type="text" class="form-control select1" placeholder="Search" name="search">
                                <span class="input-group-btn">
                                    <input type="submit" class="btn btn-default select1" value="search" style="width:100%; "> 
                                </span>
                        </div>
        </form>
    </div>
    <%
		if(department_name=="" && search=="")
		{
			query = " select * from jobs jb where status = 'created'";
	%>
    <h1>Avaliable Job</h1>
    <%
		}
		else if(department_name=="" && search!="")
		{
			if(location == "")
			{
				query = " select * from jobs jb where position like '%"+search+"%' and status = 'created' ";
			}
			else if(position == "")
			{
				query = " select * from jobs jb where location like '%"+search+"%' and status = 'created' ";
			}
			
	%>
    <h1>Result containing &acute;<% out.print(search);%>&acute;</h1>
    <%
		}
		else
		{
			query = " select * from jobs jb join departments d on jb.departmentid = d.departmentid where department_name = '"+department_name+"' and jb.status = 'created' ";
	%>
	<h1><%=department_name%></h1>
    <%
		}
	%>
	<div class="row" style="height:75px; margin-bottom:25px; margin-top:50px;">
    	<div class="col-lg-6" style="height:75px;">
        	<p style="padding-top:25px;">Position</p>
        </div>
        <div class="col-lg-1" style="height:75px;">
       		<p style="padding-top:25px;">Seats</p>
        </div>
        <div class="col-lg-3" style="height:75px;">
        	<p style="padding-top:25px;">Location</p>
        </div>
        <div class="col-lg-2" style="height:75px;">
       		
        </div>
    </div>
    <div class="article-container single-article">
    
        <div class="article-container-inner">
           
        </div>
    
	</div>
    
    <% 
	
		ResultSet rs; 
		
			rs = st.executeQuery(query);
			
			if(!rs.next())
			{
	%>
				  <div class="row" style="height:75px;">
                    <div class="col-lg-6" style="height:75px;">
                        <p style="padding-top:25px;">No data</p>
                    </div>
                    <div class="col-lg-1" style="background-color:white; height:75px;">
                        <p style="padding-top:25px;">No data</p>
                    </div>
                    <div class="col-lg-3" style="height:75px">
                        <p style="padding-top:25px;">No data</p>
                    </div>
                    <div class="col-lg-2" style="height:75px;">
                    	<p>
                            <form>
                                <input type="submit" class="button" value="Details" id="disabled"/>
                            </form>
                        </p>
                    </div>
                </div>
    <%
			}
			rs.beforeFirst();
			while(rs.next())
			{
	%>
    			 <div class="row" style="height:75px;">
                    <div class="col-lg-6" style="height:75px;">
                        <p style="padding-top:25px;"><%=rs.getString("position")%></p>
                    </div>
                    <div class="col-lg-1" style="background-color:white; height:75px;">
                        <p style="padding-top:25px;"><%=rs.getInt("jb.seats")%></p>
                    </div>
                    <div class="col-lg-3" style="height:75px">
                        <p style="padding-top:25px;"><%=rs.getString("location")%></p>
                    </div>
                    <div class="col-lg-2" style="height:75px;">
                        <p>
                            <form action="jobdetails.jsp" method="get">
                            	<input type="hidden" value="<%=rs.getString(1)%>" name="jobid" />
                                <input type="submit" class="button" value="Details"/>
                            </form>
                        </p>
                    </div>
                </div>
    <%
			}
    %>
    <div class="col-lg-12" style="margin-top: 200px; margin-bottom: 100px;">
       <%
                            if(session.getAttribute("userID") == null || !session.getAttribute("userPosition").equals("User"))
                            {
                      %>
                            <p style="text-align:center;"><a data-toggle="modal" data-target="#cancel-modal" href="#cancel-modal" class="btn btn-default" style="letter-spacing:2px; color:#00A2AE">Cannot find a job ?</a></p>
                      <%
                            }
                            else
                            {
                      %>   
                            <p style="text-align:center;"><a data-toggle="modal" data-target="#submit-modal" href="#submit-modal" class="btn btn-primary" style="letter-spacing:2px; color:white">Cannot find a job ?</a></p>
                      <%
                            }
                      %>
   </div>
   
</div>
    
    
    <div class="modal fade product_view" id="submit-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
                <h3 class="modal-title">Please complete form below</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                     <form action="helper/doRequestJob.jsp" method="post">
                        <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label">Department</label>
                                        <select name="department" class="form-control" style="height:100%;" id="department">
                                            <option value="Human Resource">Human Resource</option>
                                            <option value="Executive Office">Executive Office</option>
                                            <option value="Accounting">Accounting</option>
                                            <option value="Engineering">Engineering</option>
                                            <option value="Front Office">Front Office</option>
                                            <option value="Food & Beverage">Food & Beverage</option>
                                            <option value="Housekeeping">Housekeeping</option>
                                            <option value="Sales">Sales</option>
                                        </select>
                                    </div>
                        </div>
                         <div class="col-md-6" style="margin-top: 20px;">
                                    <div class="form-group">
                                        <label class="control-label">Position Title</label>
                                        <input name="position" type="text" placeholder="Input position title" class="form-control input-md" id="position" style="height:100%;">
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-md-6" style="margin-top: 20px;">
                                    <div class="form-group">
                                        <label class="control-label" >Location</label>
                                        <select name="location" class="form-control" style="height:100%;" id="location">
                                            <option value="Head Office">Head Office</option>
                                            <option value="Lippo Village">Lippo Village</option>
                                            <option value="Semanggi">Semanggi</option>
                                            <option value="Jakarta">Jakarta</option>
                                            <option value="Bandung">Bandung</option>
                                            <option value="Medan">Medan</option>
                                            <option value="Manado">Manado</option>
                                            <option value="Pekan Baru">Pekan Baru</option>
                                            <option value="Palembang">Palembang</option>
                                            <option value="Makassar">Makassar</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="col-md-12">
                                    <div class="form-group" style="text-align: center; margin-top: 50px;">
                                        <input type="submit" id="singlebutton1" name="singlebutton" class="btn btn-default" value="Submit">
                                    </div>
                                </div>
                    </form>
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
    
<%@ include file="footer.jsp"%>
	
     
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
    <script type="text/javascript" src="assets/js/smoothscroll.js"></script>
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>

        <script>
         $(document).ready(function() {
            $('#singlebutton1').bind("click",function() 
            { 
                var department = $('#department').val();
                var position = $('#position').val();
                var location = $('#location').val(); 
                if(department=='') 
                { 
                    alert("You haven't selected the department"); 
                    return false;
                }
               
                else if(position=='') 
                { 
                    alert("You haven't selected the position"); 
                    return false;
                }
                else if(location=='') 
                { 
                    alert("You haven't selected the location"); 
                    return false;
                }
                else{
                    return true; 
                }

            }); 
        });
        </script> 
   
        
</body>
</html>
