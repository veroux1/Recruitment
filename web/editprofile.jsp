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
		response.sendRedirect("index.jsp?msg=You are not authorized to access that page!");
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
            <h1 class="page-header">Edit Your Profile</h1>
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
                    <h6>Upload a different photo...</h6>
                    <form class="form-horizontal" role="form" action="ImageUploader" method="post" enctype="multipart/form-data" name="uploadForm">
                        <input type="file" name="file" id="image" class="text-center center-block well well-sm" style="font-size: 14px; width: 200px">
                        <input class="btn btn-primary" value="Apply" type="submit" name="submit" id="submit">
                    </form>
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
                <form class="form-horizontal" role="form" action="helper/doEditProfile.jsp" method="post">
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Name:</label>
                    <div class="col-lg-8">
                        <input class="form-control" value="<%=rs.getString("name")%>" type="text" name="name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Gender:</label>
                    <div class="col-lg-8">
                        <select class="form-control" name="gender" id="gender">
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Age:</label>
                    <div class="col-lg-8">
                        <input class="form-control" value="<%=rs.getString("age")%>" type="text" name="age">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Email:</label>
                    <div class="col-lg-8">
                      <input class="form-control" value="<%=rs.getString("email")%>" type="text" name="email">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Phone Number:</label>
                    <div class="col-lg-8">
                      <input class="form-control" value="<%=rs.getString("phone")%>" type="text" name="phone">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Birthplace:</label>
                    <div class="col-lg-8">
                        <input class="form-control" value="<%=rs.getString("birthplace")%>" type="text" name="birthplace">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Birthdate:</label>
                    <div class="col-lg-8">
                       <input class="form-control" value="<%=rs.getString("birthdate")%>" type="date" name="birthdate">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Address:</label>
                    <div class="col-lg-8">
                        <textarea class="form-control"  name="address"><%=rs.getString("address")%></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Identity Card No</label>
                    <div class="col-lg-8">
                        <input class="form-control" value="<%=rs.getString("idcard")%>" type="text" name="idcard">
                    </div>
                  </div>
                   <%
                         String prev_com = rs.getString("prev_company");
                         String prev_pos = rs.getString("prev_position");
                         String query1 = "select * from transactions where userid = '"+userID+"'" ;
                         ResultSet rs1 = st.executeQuery(query1);
                    %>
                   <div class="form-group">
                    <label class="col-lg-3 control-label">Current applying status:</label>
                    <div class="col-lg-8">
                        <%
                            String status = "";
                            if(rs1.next())
                            {
                                if(rs1.getString("status").equals("Shortlist"))
                                {
                                    status = "Shortlist CV Selection";
                                }
                                else  if(rs1.getString("status").equals("0"))
                                {
                                    status = "Initial Qualification";
                                }
                                else  if(rs1.getString("status").equals("1"))
                                {
                                    status = "HR Interview";
                                }
                                else  if(rs1.getString("status").equals("2"))
                                {
                                    status = "User Interview";
                                }
                                else  if(rs1.getString("status").equals("3"))
                                {
                                    status = "Offering Letter";
                                }
                                else  if(rs1.getString("status").equals("-1"))
                                {
                                    status = "Rejected";
                                }
                                else  if(rs1.getString("status").equals("-1"))
                                {
                                    status = "Hold";
                                }
                        %>
                                <label class="col-lg-3 control-label" style="text-align: left;"><%=status%></label>
                        <%
                            }
                            else
                            {
                       %>       
                              <label class="col-lg-3 control-label" style="text-align: left;">Not applied yet</label>
                       <%
                            }
                       %>
                    </div>
                  </div>
                    <div class="form-group">
                    <label class="col-lg-3 control-label">Previous Company:</label>
                    <div class="col-lg-8">
                      <input class="form-control" placeholder="Input your previous company" value="<%=prev_com%>" type="text" name="prevcom">
                    </div>
                  </div>
                    <div class="form-group">
                    <label class="col-lg-3 control-label">Position in Previous Company:</label>
                    <div class="col-lg-8">
                        <br>
                      <input class="form-control" placeholder="Input your previous position" type="text" value="<%=prev_pos%>" name="prevpos">
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
        <script type="text/javascript" src="assets/js/smoothscroll.js"></script>
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>
        
         <script type="text/javascript">
        $(document).ready(function() {
            $('#submit').bind("click",function() 
            { 
                var image = $('#image').val();
                if(image=='') 
                { 
                    alert("You haven't selected the image"); 
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
