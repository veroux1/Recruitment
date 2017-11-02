<%-- 
    Document   : editprofile
    Created on : Sep 20, 2017, 8:44:49 AM
    Author     : Darien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aryaduta Talent</title>
        
        <%@ include file="helper/connect.jsp" %>
        <%@ include file="head.jsp"%>
        
        <style>

            @font-face  {
			  font-family: 'Gotham';
			  src: url("assets/fonts/Gotham-Book.ttf"),
			       url("assets/fonts/Gotham-Medium.ttf");
			  
                        }
		
            .centered   {
                          color:#936444; 
                          font-family:'Gotham', Gotham-Medium;
                          letter-spacing:5px;
                        }
                </style>
        
    </head>
    <body>
        
        <%
	if(session.getAttribute("userPosition") == null || session.getAttribute("userID") == null)
	{
		response.sendRedirect("index.jsp?msg=You are not authorized to access this page!");
	}
	else if(session.getAttribute("userPosition").equals("User"))
	{
            
            String userID = session.getAttribute("userID").toString();
            String query = "select * from members where userid = '"+userID+"'" ;
            
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
        %>
        
        <%@ include file="navbar.jsp"%>
        <div class="container" style="padding-top: 60px; padding-bottom: 100px;">
            <h1 class="page-header">Your Profile</h1>
            <div class="row">
              <!-- left column -->
              <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="text-center">
                    <%
                        if(rs.getString("photo").equals(""))
                        {
                    %>
                    <img src="assets/img/user_photos/default.jpg" class="avatar img-circle img-thumbnail" alt="avatar" style="width: 210px; height: 210px;">
                    <%
                        }
                        else
                        {
                    %>
                    <img src="assets/img/user_photos/<%=rs.getString("photo")%>" class="avatar img-circle img-thumbnail" alt="avatar" style="width: 210px; height: 210px;">
                    <%
                        }
                    %>
                </div>
              </div>
              <!-- edit form column -->
              <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
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
                <h3>Personal info</h3>
                <form class="form-horizontal" role="form" action="helper/doChangePassword.jsp">
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Name:</label>
                    <div class="col-lg-8">
                      <label class="col-lg-3 control-label" style="text-align: left;"><%=rs.getString("name")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Email:</label>
                    <div class="col-lg-8">
                      <label class="col-lg-3 control-label" style="text-align: left;"><%=rs.getString("email")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Phone Number:</label>
                    <div class="col-lg-8">
                       <label class="col-lg-3 control-label" style="text-align: left;"><%=rs.getString("phone")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Birthdate:</label>
                    <div class="col-lg-8">
                       <label class="col-lg-3 control-label" style="text-align: left;"><%=rs.getString("birthdate")%></label>
                    </div>
                  </div>
                   <div class="form-group">
                    <label class="col-lg-3 control-label">Current applying status:</label>
                    <div class="col-lg-8">
                       <label class="col-lg-3 control-label" style="text-align: left;">Not applied yet</label>
                    </div>
                  </div>
                    <div class="form-group">
                    <label class="col-lg-3 control-label">Old Password:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="oldpassword">
                    </div>
                  </div>
                     <div class="form-group">
                    <label class="col-lg-3 control-label">New Password</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="newpassword">
                    </div>
                  </div>
                     <div class="form-group">
                    <label class="col-lg-3 control-label">Retype New Password</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="renewpassword">
                    </div>
                  </div>
                    <div class="form-group" style="padding-top: 30px;">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                      <input class="btn btn-primary" value="Submit" type="submit">
                      <span></span>
                    </div>
                  </div>
                </form>
              </div>
            </div>
        </div>
        <%@ include file="footer.jsp"%>
        <% 
                }
            }
        %>
        <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
       
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>
    </body>
</html>
