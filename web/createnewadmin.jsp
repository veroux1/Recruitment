<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<%@ include file="head.jsp"%>
 <link href="assets/css/admin.css" rel="stylesheet">
 
 <style>
 	.well-block {
    background-color: #fff;
    padding: 40px;
	}

	.well-title {
		margin-top: 40px;
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

	<%@ include file="adminnav.jsp" %>

	</div>
</div>  	
	
</div>

  	<div class="col-md-10 content">
  	<div class="panel panel-default">
            <div class="panel-heading">
                Create New Admin
            </div>
	<div class="panel-body">
		 <div class="container">
            <div class="row">
            <div class="col-md-2">
            </div>
                <div class="col-md-7">
                    <div class="well-block">
                       
                        <form action="helper/doCreateAdmin.jsp" method="post">
                            <!-- Form start -->
                            <div class="row">
                             <div class="well-title">
                            	<h2>Information Details</h2>
                                <br />
                        	 </div>
                               <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" >Name</label>
                                        <input name="name" type="text" placeholder="Input admin's name" class="form-control input-md">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" >Phone</label>
                                        <input name="phone" type="text" placeholder="Input admin's phone number" class="form-control input-md">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" >Email</label>
                                        <input name="email" type="text" placeholder="Input admin's email address" class="form-control input-md">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                     <label class="control-label" >Password</label>
                                     <input name="password" type="text" placeholder="Input admin's password" class="form-control input-md">    
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                     <label class="control-label" >Confirm Password</label>
                                     <input name="cpassword" type="text" placeholder="Input admin's confirmation password" class="form-control input-md">    
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" >Location</label>
                                        <select name="location" class="form-control">
                                            <option value="Head Office">Head Office</option>
                                            <option value="Lippo Village">Lippo Village</option>
                                            <option value="Semanggi">Semanggi</option>
                                            <option value="Jakarta">Jakarta</option>
                                            <option value="Palembang">Palembang</option>
                                            <option value="Manado">Manado</option>
                                            <option value="Pekan Baru">Pekanbaru</option>
                                            <option value="Makassar">Makassar</option>
                                            <option value="Medan">Medan</option>
                                            <option value="Bali">Bali</option>
                                            <option value="IKG">Imperial Klub Golf</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="col-md-12">
                                   &nbsp;
                                </div>
                                <!-- Button -->
                                <div class="col-md-12">
                                    <div class="form-group" style="text-align: center;">
                                        <input type="submit" id="singlebutton" name="singlebutton" class="btn btn-default" value="Submit">
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!-- form end -->
                    </div>
                </div>
                
        </div>       
    
	</div>
</div>
  		</div>
  	
  	</div>
    
    <%
		}
	%>

<script>
	$(function () {
  	$('.navbar-toggle-sidebar').click(function () {
  		$('.navbar-nav').toggleClass('slide-in');
  		$('.side-body').toggleClass('body-slide-in');
  		$('#search').removeClass('in').addClass('collapse').slideUp(200);
  	});

  	$('#search-trigger').click(function () {
  		$('.navbar-nav').removeClass('slide-in');
  		$('.side-body').removeClass('body-slide-in');
  		$('.search-input').focus();
  	});
  });
</script>

<!-- for disabling dropdown -->
<script>
	$(document).on('change', '#any', function(){
    debugger;
    if($(this).prop('checked')){
        $('#FoS').attr('disabled', 'disabled');
    } else {
        $('#FoS').removeAttr('disabled');
    }
    
});
</script>

	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
        <script type="text/javascript" src="assets/js/smoothscroll.js"></script>
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>

</body>
</html>