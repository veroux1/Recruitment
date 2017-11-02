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
                    <div class="col-lg-2 navbar2"><a href="hatslist.jsp">HATS</a></div>
                    <%
                        }
                    %>
                    <div class="col-lg-2 navbar2"><a href="accepted.jsp?page=1">Accepted</a></div>
                    <div class="col-lg-2 navbar2"><a href="rejected.jsp?unit=<%=location%>&month=&year=&potential=">Rejected</a></div>
                    <div class="col-lg-2 navbar2"><a href="blacklist.jsp" style="color: purple;">Blacklist</a></div>
                </nav>
                
	</div><!-- /.container-fluid -->
    </nav> 
    <div class="col-lg-3"></div>
    <div class="col-lg-6" style="padding:0px; margin-bottom:50px;">
        <form class="form-inline" action="helper/doSearchNameAccepted.jsp" method="post">
                       
                      
                       <div class="input-group custom-search-form col-md-12">
                            <input type="text" class="form-control" placeholder="Input Name Here" name="searchname">
                                <span class="input-group-btn">
                                    <input type="submit" class="btn btn-default" value="search" style="width:100%;"> 
                                </span>
                        </div>
                        
        </form>
    </div>     
               <div class="col-lg-2">
                  
               </div>
               <div class="col-lg-1"></div>
        <%  
        String unitlocation = request.getParameter("unit");
       
        String query0 = "";
        
        String searchname = request.getParameter("searchname");
        
        if(request.getParameter("searchname") == null)
        {
             query0 = "select * from transactions tr join members mb on tr.userid = mb.userid join jobs jb on tr.jobid = jb.jobid join departments dp on jb.departmentid = dp.departmentid where tr.status = '5' ";
        }
        else if(request.getParameter("searchname")!= null)
        {
              query0 = "select * from transactions tr join members mb on tr.userid = mb.userid join jobs jb on tr.jobid = jb.jobid join departments dp on jb.departmentid = dp.departmentid where tr.status = '5' and mb.name like '%"+searchname+"%' ";
        }
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
                        <br>
                       
                            <div class="col-md-12" style="margin-bottom: 10px;">
                                <b>Name:</b>&nbsp;<%=rs0.getString("mb.name")%>
                    
                       </div>
                        <br>
                        <div class="col-md-12" style="margin-bottom: 10px;">
                                <b>Prev Company:</b>&nbsp;<%=rs0.getString("mb.prev_company")%></td>
                        </div>
                        
                        <div class="col-md-12" style="margin-bottom: 10px;">
                                <b>Last Position:</b>&nbsp;<%=rs0.getString("mb.prev_position")%>
                        </div>
                        
                        <div class="col-md-12" style="word-wrap: break-word; margin-bottom: 10px;">
                            <b>HATS: </b><%=rs0.getString("tr.hats")%>
                        </div>
                       
                        <div class="col-md-12" style="margin-bottom: 10px;">
                            <b>File:</b> &nbsp;
                            <a href="Downloader?name=<%=rs0.getString("mb.cv")%>">CV</a> &nbsp; &nbsp; &nbsp;
                            <a href="Downloader?name=<%=rs0.getString("mb.cv")%>">Application Form</a></td>
                        </div>
                        <div class="col-md-12" style="margin-bottom: 20px;">
                            <b>Applied for:</b>&nbsp;<br><%=rs0.getString("dp.department_name")%><br>
                                <%=rs0.getString("jb.position")%><br>
                                    <%=rs0.getString("jb.location")%><br>
                        </div>
                            
                             
                             
                            
                       
                        <br>
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
                        <a href = "accepted.jsp?page=<%=i%>" style="text-decoration:none; padding-right:3px"> <%=i%> </a>
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

</body>
</html>