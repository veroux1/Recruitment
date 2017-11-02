<%-- 
    Document   : editprofile
    Created on : Sep 20, 2017, 8:44:49 AM
    Author     : Darien
--%>


<%@page import="java.text.SimpleDateFormat"%>
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
            String prev_com = "";
            String prev_pos = "";
            String gender = "";
            String age = "";
            String birthplace= "";
            String address = "";
            String idcard = "";
            
            
            if(rs.next())
            {
                 prev_com = rs.getString("prev_company");
                 prev_pos = rs.getString("prev_position");
                 age = rs.getString("age");
                 gender = rs.getString("gender");
                 birthplace = rs.getString("birthplace");
                 address = rs.getString("address");
                 idcard = rs.getString("idcard");
                 
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
                <%  
                    if(prev_com.equals("-") || prev_pos.equals("-") || age.equals("-") || gender.equals("-") || birthplace.equals("-") || address.equals("-") || idcard.equals("-"))
                    {
                    
                %>
                     <div class="alert alert-danger alert-dismissable">
                     <a class="panel-close close" data-dismiss="alert">×</a> 
                     <i class="fa fa-exclamation-triangle"></i>
                     Please complete your biodata in edit profile!
                </div>
                <%
                    }
                %>
                
                <h3>Personal info</h3>
                <form class="form-horizontal">
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Name:</label>
                    <div class="col-lg-8">
                      <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=rs.getString("name")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Gender:</label>
                    <div class="col-lg-8">
                      <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=rs.getString("gender")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Age:</label>
                    <div class="col-lg-8">
                      <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=rs.getString("age")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Email:</label>
                    <div class="col-lg-8">
                      <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=rs.getString("email")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Phone Number:</label>
                    <div class="col-lg-8">
                       <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=rs.getString("phone")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Birthplace:</label>
                    <div class="col-lg-8">
                      <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=rs.getString("birthplace")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Birthdate:</label>
                    <div class="col-lg-8">
                       <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=rs.getString("birthdate")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Address:</label>
                    <div class="col-lg-8">
                      <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=rs.getString("address")%></label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Identity Card No:</label>
                    <div class="col-lg-8">
                      <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=rs.getString("idcard")%></label>
                    </div>
                  </div>
                    <%
                         String hr_interview_date = "";
                         String hr_interview_time = "";
                         String hr_interview_venue = "";
                         String hr_interviewer_name = "";
                         
                         
                         String user_interview_date = "";
                         String user_interview_time = "";
                         String user_interview_venue = "";
                         String user_interviewer_name = "";
                         
                         
                         String query1 = "select * from transactions where userid = '"+userID+"'" ;
                         ResultSet rs1 = st.executeQuery(query1);
                         String transactionid = "";
                        
                    %>
                   <div class="form-group">
                    <label class="col-lg-3 control-label">Current applying status:</label>
                    <div class="col-lg-8">
                        <%
                            String status = "";
                            
                            if(rs1.next())
                            {
                                 transactionid = rs1.getString("transactionid");
                                 hr_interview_date = rs1.getString("hr_interview_date");
                                 hr_interview_time = rs1.getString("hr_interview_time");
                                 hr_interview_venue = rs1.getString("hr_interview_venue");
                                 hr_interviewer_name = rs1.getString("hr_interviewer_name");
                                 
                                 user_interview_date = rs1.getString("user_interview_date");
                                 user_interview_time = rs1.getString("user_interview_time");
                                 user_interview_venue = rs1.getString("user_interview_venue");
                                 user_interviewer_name = rs1.getString("user_interviewer_name");
                                
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
                                else  if(rs1.getString("status").equals("4"))
                                {
                                    status = "Offering Contract";
                                }
                                 else  if(rs1.getString("status").equals("5"))
                                {
                                    status = "Accepted";
                                }
                                else  if(rs1.getString("status").equals("-1"))
                                {
                                    status = "Rejected";
                                }
                                else  if(rs1.getString("status").equals("-1"))
                                {
                                    status = "Hold";
                                }
                                if(rs1.getString("ol_filename").equals("no data"))
                                {
                        %>
                                <label class="col-lg-3 control-label" style="text-align: left;"><%=status%></label>
                                <%
                                    if(rs1.getString("status").equals("4"))
                                    {
                                %>
                                <label class="col-lg-6 control-label" style="text-align: left; color: orange;">Your Offering Contract is still under process</label>
                        <%
                                    }
                                }
                                else if(!rs1.getString("ol_filename").equals("no data") && rs1.getString("status").equals("4"))
                                {
                        %>
                                <label class="col-lg-3 control-label" style="text-align: left;"><a href="Downloader?name=<%=rs1.getString("ol_filename")%>&file=contract"><%=status%></a></label>
                                <label class="col-lg-3 control-label" style="text-align: left;"><a href="helper/acceptOffer.jsp?transactionid=<%=rs1.getString("transactionid")%>" class="btn btn-default">Accept</a></label>
                                
                                <label class="col-lg-3 control-label" style="text-align: left;"><a data-toggle="modal" data-target="#cancel-modal1" href="#submit-modal" class="btn btn-default">Reject</a></label>
                                
                        <%
                                }
                                else
                                {
                        %>
                                <label class="col-lg-3 control-label" style="text-align: left;"><%=status%></label>
                        <%
                                }
                            }
                            else
                            {
                       %>       
                              <label class="col-lg-3 control-label" style="text-align: left; ">Not applied yet</label>
                       <%
                            }

                              String checkQuery = "select * from reschedules where transactionid = '"+transactionid+"' and status = 'no request'";
                              String check = "";
                              
                              ResultSet rs2 = st.executeQuery(checkQuery);
                              if(rs2.next())
                              {
                                  check = "no request";
                              }
                       %>
                    </div>
                  </div>
                    <%
                         if((status.equals("HR Interview") || status.equals("User Interview")) && check.equals("no request"))
                              {
                                  if(status.equals("HR Interview"))
                                  {
                    %>
                                <div class="form-group">
                                    <label class="col-lg-3 control-label" style="color: blue;">Interview Schedule Date:</label>
                                <div class="col-lg-8">
                                    <label class="col-lg-3 control-label" style="text-align: left; color:blue; "><br><%=hr_interview_date%></label>
                                </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-3 control-label" style="color: blue;">Interview Schedule Time:</label>
                                <div class="col-lg-8">
                                    <label class="col-lg-3 control-label" style="text-align: left; color:blue; "><br><%=hr_interview_time%></label>
                                </div>
                              </div>
                                <div class="form-group">
                                    <label class="col-lg-3 control-label" style="color: blue;">Venue:</label>
                                <div class="col-lg-8">
                                    <label class="col-lg-3 control-label" style="text-align: left; color:blue; "><%=hr_interview_venue%></label>
                                </div>
                              </div>
                                 <div class="form-group">
                                    <label class="col-lg-3 control-label" style="color: blue;">Interviewer Name:</label>
                                <div class="col-lg-8">
                                    <label class="col-lg-3 control-label" style="text-align: left; color:blue; "><%=hr_interviewer_name%></label>
                                </div>
                              </div>
                                
                    <%
                                }
                                else if(status.equals("User Interview"))
                                {
                    %>
                                <div class="form-group">
                                    <label class="col-lg-3 control-label" style="color: blue;">Interview Schedule Date:</label>
                                <div class="col-lg-8">
                                    <label class="col-lg-3 control-label" style="text-align: left; color:blue; "><br><%=user_interview_date%></label>
                                </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-3 control-label" style="color: blue;">Interview Schedule Time:</label>
                                <div class="col-lg-8">
                                    <label class="col-lg-3 control-label" style="text-align: left; color:blue; "><br><%=user_interview_time%></label>
                                </div>
                              </div>
                                <div class="form-group">
                                    <label class="col-lg-3 control-label" style="color: blue;">Venue:</label>
                                <div class="col-lg-8">
                                    <label class="col-lg-3 control-label" style="text-align: left; color:blue; "><%=user_interview_venue%></label>
                                </div>
                              </div>
                                 <div class="form-group">
                                    <label class="col-lg-3 control-label" style="color: blue;">Interviewer Name:</label>
                                <div class="col-lg-8">
                                    <label class="col-lg-3 control-label" style="text-align: left; color:blue; "><%=user_interviewer_name%></label>
                                </div>
                              </div>
                                
                    <%
                                }
                              }
                    %>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Previous Company:</label>
                    <div class="col-lg-8">
                        <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=prev_com%></label>
                    </div>
                  </div>
                    <div class="form-group">
                    <label class="col-lg-3 control-label" >Position in Previous Company:</label>
                    <div class="col-lg-8">
                      <label class="col-lg-3 control-label" style="text-align: left; font-weight: 100;"><%=prev_pos%></label>
                    </div>
                  </div>
                    <div class="form-group" style="padding-top: 30px;">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                        <%
                            if(prev_com.equals("-") || prev_pos.equals("-"))
                            {
                        %>
                        <a href="userprofile.jsp" class="btn btn-primary" style="width: 211.72px;">Download Application Form</a>
                        
                        <%
                            }
                            else
                            {
                        %>
                        <a href="Downloader?name=Copy of 002 - Application Form (2).xls" class="btn btn-primary" style="width: 211.72px;">Download Application Form</a>
                        <%
                            }
                        %>
                      <span></span>
                      <input class="btn btn-primary" value="Edit Profile" type="submit">
                      <span></span>
                          <a class="btn btn-primary" href="changepassword.jsp">Change Password</a>
                          <span></span>
                          <%
                              
                              
                              if((status.equals("HR Interview") || status.equals("User Interview")) && check.equals("no request"))
                              {
                          %>
                          <div class="form-group" style="padding-top: 30px; padding-bottom: 100px;">
                         
                          <div class="col-md-8">
                          <a class="btn btn-warning" data-toggle="modal" href="#myModal3"">Request Reschedule Interview</a>
                          </div>
                          <%
                              }
                              
                          %>
                    </div>
                  </div>
                </form>
              </div>
            </div>
        </div>
                    
       
                            <div class="modal" id="myModal3" data-backdrop="static">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                      <h4 class="modal-title">Reschedule Interview</h4>
                                    </div>
                                    <div class="modal-body" style="min-height: 200px;">
                                        <form action="helper/doRequestSchedule.jsp" method="post">
                                           
                                            <div class="col-sm-4" style="margin-top: 50px;">
                                                <h4><b>Option 1</b></h4>
                                                <br>
                                                Request New Date
                                            </div>
                                            <div class="col-sm-8">
                                                <br><br><br>
                                                <input type="date" name="date1" class="input" style="margin-top: 50px;">
                                            </div>
                                            <div class="col-sm-12">
                                                &nbsp;
                                            </div>
                                            <div class="col-sm-4">
                                                Request New Time
                                            </div>
                                            <div class="col-sm-8">
                                                <input type="text" name="time1" placeholder="e.g:  09.00 AM" class="input">
                                            </div>
                                            <div class="col-sm-4" style="margin-top: 50px;">
                                                <h4><b>Option 2</b></h4>
                                                <br>
                                                Request New Date
                                            </div>
                                            <div class="col-sm-8">
                                                <br><br><br>
                                                <input type="date" name="date2" class="input" style="margin-top: 50px;">
                                            </div>
                                            <div class="col-sm-12">
                                                &nbsp;
                                            </div>
                                            <div class="col-sm-4">
                                                Request New Time
                                            </div>
                                            <div class="col-sm-8">
                                                <input type="text" name="time2" placeholder="e.g:  09.00 AM" class="input">
                                            </div>
                                            <div class="col-sm-12">
                                                &nbsp;
                                            </div>
                                            <div class="col-sm-12">
                                                &nbsp;
                                            </div>
                                        
                                    </div>
                                    <div class="modal-footer" style="background-color: white;">
                                      <input type="hidden" value="<%=transactionid%>" name="transactionid">
                                      <a href="#" data-dismiss="modal" class="btn btn-default">Close</a>
                                      <input type="submit" class="btn btn-primary" value="Ok" id="submit">
                                      </form>
                                    </div>
                                   </div>
                                </div>
                            </div>
        <div class="modal fade product_view" id="cancel-modal1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <a href="#" data-dismiss="modal" class="class pull-right" style="color: black;"><span class="glyphicon glyphicon-remove"></span></a>
                                                <h3 class="modal-title">Confirmation</h3>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-12" >
                                                        <h3>Are you sure want to reject this Offering letter ? Please tell us the reason.</h3>
                                                    <br>
                                                    <form action="helper/rejectOL.jsp" method="post">
                                                         <div id="wrapperdiv">
                                                        
                                                         <textarea id="reason" name="reason" rows="5" cols="50" placeholder="Reason:"></textarea>  
                                                         <br>
                                                         <br>
                                                         <input type="hidden" value="<%=transactionid%>" name="transactionid">
                               
                                                         <input type="submit" class="btn btn-md btn-primary" value="Reject   " id="rejectsubmit">
                                                         <a href="#" class="btn btn-default" data-dismiss="modal">No</a>
                                                         </div>
                                                    </form>
                                                    </div>
                                                </div>
                                            </div>
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
