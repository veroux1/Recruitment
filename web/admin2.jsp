<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<%@ include file="head.jsp"%>
<%@ include file="helper/connect.jsp"%>
 <link href="assets/css/admin.css" rel="stylesheet">

</head>

<body>

<%
	if(session.getAttribute("userPosition") == null || !session.getAttribute("userPosition").equals("Admin"))
	{
		response.sendRedirect("index.jsp?msg=You are not authorized to access that page!");
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
                Dashboard
            </div>
	<div class="panel-body">
                <%
                   if(request.getParameter("msg") != null)
                   {
                %>
                <div class="alert alert-info alert-dismissable">
                <a class="panel-close close" data-dismiss="alert">×</a> 
                <i class="fa fa-coffee"></i>
                <%=request.getParameter("msg")%>
                </div>
                <%
                    }
                %>
               
                <div class="col-lg-6">
		<iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=1upbfdskofo9aif1os08jj60ik%40group.calendar.google.com&amp;color=%23853104&amp;ctz=Asia%2FBangkok" style="border-width:0" width="500" height="300" frameborder="0" scrolling="no"></iframe>
                </div>
                <div class="col-lg-1">
                    &nbsp;
                </div>
                <%
                        Date date = new Date();
                        String todayDate = new String("");
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-d");
                        todayDate = sdf.format(date);
                        
                        
                        
                        String query3 = "select * from transactions tr join members mb on tr.userid = mb.userid join jobs jb on tr.jobid = jb.jobid join departments dp on jb.departmentid = dp.departmentid where jb.location = '"+location+"' and (hr_interview_date = '"+todayDate+"' || user_interview_date = '"+todayDate+"') ";
                        ResultSet rs3 = st.executeQuery(query3);
                %>
                <div class="col-lg-5">
                    <br>
                    Today's Agenda:<br><br>
                        
                    
                <%
                    
                    while(rs3.next())
                    {
                        if(rs3.getString("tr.hr_interview_date").equals(todayDate))
                        {
                            out.println("- HR Interview:  "+rs3.getString("mb.name")+"  by "+rs3.getString("tr.hr_interviewer_name") + ", Time: "+rs3.getString("tr.hr_interview_time") );
                %>
                       
                            <br>
                <%
                        }
                        if(rs3.getString("tr.user_interview_date").equals(todayDate))
                        {
                            out.println("- User Interview:  "+rs3.getString("mb.name")+"  by "+rs3.getString("tr.user_interviewer_name"));
                %>
                            <br>
                <%
                        }
                        
                        
                    }
                %>
                    
               
                    
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
