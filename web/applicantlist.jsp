<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<%@ include file="head.jsp"%>
<%@ include file="helper/connect.jsp" %>
<link href="assets/css/admin.css" rel="stylesheet">

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

<%  
        String unitlocation = request.getParameter("unit");
        String department_name = request.getParameter("department");
        String query = "select * from transactions tr join members mb on tr.userid = mb.userid join jobs jb on tr.jobid = jb.jobid join departments dp on jb.departmentid = dp.departmentid where jb.location = '"+unitlocation+"' and (dp.department_name = '"+department_name+"' and tr.status = 'Shortlist') ";
        ResultSet rs = st.executeQuery(query);
        
        
     
%>


  	<div class="col-lg-10 content">
  	<div class="panel panel-default">
            <div class="panel-heading">
               Talent / <%=request.getParameter("unit")%> / <%=department_name%>
            </div>
	<div class="panel-body">
               <div class="row" style="height:75px;">
                   <%
                       while(rs.next())
                       {
            
                   %>
                    <div class="col-lg-5" style="min-height: 250px; margin-top: 20px; border: 1px solid black; margin-left: 6%">
                       
                        <div class="col-md-12" style="margin-top: 20px; margin-bottom: 20px;">
                            <b>Name:</b>&nbsp;<%=rs.getString("mb.name")%>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Prev Company:</b>&nbsp;<%=rs.getString("mb.prev_company")%>
                        </div>
                         <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Last Position:</b>&nbsp;<%=rs.getString("mb.prev_position")%>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>File:</b>&nbsp;&nbsp;
                            <a href="Downloader?name=<%=rs.getString("mb.cv")%>">CV</a> &nbsp; &nbsp; &nbsp;
                            <a href="Downloader?name=<%=rs.getString("mb.cv")%>">Application Form</a>
                        </div>
                         <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Applied for:</b>&nbsp;<br><%=rs.getString("dp.department_name")%><br>
                                <%=rs.getString("jb.position")%><br>
                                    <%=rs.getString("jb.location")%><br>
                        </div>
                       <div class="col-md-6" style="margin-bottom: 20px;">
                                <form action="helper/doChangeShortList.jsp">
                                    <input type="hidden" value="<%=unitlocation%>" name="unit">
                                    <input type="hidden" value="<%=department_name%>" name="department">
                                    <input type="hidden" value="<%=rs.getString("tr.transactionid")%>" name="transactionid">
                                    <input type="hidden" value="ok" name="check">
                                    <input type="submit" value="Shortlist" name="shortlist">
                                </form>
                       </div>
                       <div class="col-md-6" style="margin-bottom: 20px;">
                                <form action="helper/doChangeShortList.jsp">
                                    <input type="hidden" value="<%=unitlocation%>" name="unit">
                                    <input type="hidden" value="<%=department_name%>" name="department">
                                    <input type="hidden" value="<%=rs.getString("tr.transactionid")%>" name="transactionid">
                                    <input type="hidden" value="no" name="check">
                                    <input type="submit" value="  Reject   ">
                                </form>
                       </div>
                        
                    </div>
                   
                   
                     <%
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
       
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>

</body>
</html>
