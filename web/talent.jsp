<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<%@ include file="head.jsp"%>
 <link href="assets/css/admin.css" rel="stylesheet">

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

	<%@ include file="talentnav.jsp" %>

	</div>
</div>  	
	
</div>

  	<div class="col-md-10 content">
  	<div class="panel panel-default">
            <div class="panel-heading">
                Talents / <%=request.getParameter("unit")%>
            </div>
	<div class="panel-body">
            <div class="container" style="margin-top: 50px;">
                <div class="col-md-2">
                    <a class="btn btn-block btn-lg " href="applicantlist.jsp?unit=<%=request.getParameter("unit")%>&department=Human Resource">
                       <i class="fa fa-users" id="icone_grande" style="font-size: 36px;"></i> <br><br>
                      </i> Human Resource</span></a>
                 </div>
                 <div class="col-md-2">
                   <a class="btn btn-block btn-lg " href="applicantlist.jsp?unit=<%=request.getParameter("unit")%>&department=Front Office">
                       <i class="fa fa-user" id="icone_grande" style="font-size: 36px;"></i> <br><br>
                       </i> Front Office</span></a>
                 </div>
                 <div class="col-md-2">
                   <a class="btn btn-block btn-lg " href="applicantlist.jsp?unit=<%=request.getParameter("unit")%>&department=Engineering">
                       <i class="fa fa-cog fa-spin" id="icone_grande" style="font-size: 36px;"></i> <br><br>
                       </i>Engineering</span></a>
                 </div>
                 <div class="col-md-2">
                   <a class="btn btn-block btn-lg " href="applicantlist.jsp?unit=<%=request.getParameter("unit")%>&department=Executive Office">
                       <i class="fa fa-pied-piper-alt" id="icone_grande" style="font-size: 36px;"></i> <br><br>
                       </i>Executive Office</span></a>
                 </div> 
           </div>
            <div class="container" style="margin-top: 50px; margin-bottom: 50px;">
                <div class="col-md-2">
                   <a class="btn btn-block btn-lg " href="applicantlist.jsp?unit=<%=request.getParameter("unit")%>&department=Sales">
                       <i class="fa fa-glass" id="icone_grande" style="font-size: 36px;"></i> <br><br>
                      </i>Sales</span></a>
                 </div>
                 <div class="col-md-2">
                   <a class="btn btn-block btn-lg " href="applicantlist.jsp?unit=<%=request.getParameter("unit")%>&department=Food and Beverage">
                       <i class="fa fa-glass" id="icone_grande" style="font-size: 36px;"></i> <br><br>
                      </i>Food & Beverage</span></a>
                 </div>
                 <div class="col-md-2">
                   <a class="btn btn-block btn-lg " href="applicantlist.jsp?unit=<%=request.getParameter("unit")%>&department=Accounting">
                       <i class="fa fa fa-edit" id="icone_grande" style="font-size: 36px;"></i> <br><br>
                       </i>Accounting</span></a>
                 </div>
                 <div class="col-md-2">
                   <a class="btn btn-block btn-lg " href="applicantlist.jsp?unit=<%=request.getParameter("unit")%>&department=House Keeping">
                       <i class="icon-heart" id="icone_grande" style="font-size: 36px;"></i> <br><br>
                       </i>House Keeping</span></a>
                 </div> 
                
                
           </div>
            <div class="container" style="margin-top: 50px; margin-bottom: 50px;">
                 <div class="col-md-2">
                   
                 </div>
                <div class="col-md-2">
                   <a class="btn btn-block btn-lg "  href="applicantlist.jsp?unit=<%=request.getParameter("unit")%>&department=Management Trainee">
                       <i class="icon-briefcase" id="icone_grande" style="font-size: 36px;"></i> <br><br>
                       </i>Management<br>Trainee</span></a>
                 </div>
                 <div class="col-md-2">
                   <a class="btn btn-block btn-lg "  href="applicantlist.jsp?unit=<%=request.getParameter("unit")%>&department=Internship">
                       <i class="fa fa-glass" id="icone_grande" style="font-size: 36px;"></i> <br><br>
                               </i>Internship<br> &nbsp;</span></a>
                 </div>
                <div class="col-md-2">
                   
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

	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
        <script type="text/javascript" src="assets/js/smoothscroll.js"></script>
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>

</body>
</html>
