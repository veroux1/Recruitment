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
                 <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-3">Emails</div>
                        <div class="col-lg-3">Name</div>
                        <div class="col-lg-3">Question</div>
                        <div class="col-lg-3"></div>
                    </div>
                <%
                    String query = "select * from questions";
                    ResultSet rs = st.executeQuery(query);
                    
                    while(rs.next())
                    {
                %>
                    <br>
                    <div class="row">
                        <div class="col-lg-3"><%=rs.getString("emails")%></div>
                        <div class="col-lg-3"><%=rs.getString("name")%></div>
                        <div class="col-lg-3" style="word-wrap: break-word;"><%=rs.getString("question")%></div>
                        <div class="col-lg-3"><a data-toggle="modal" data-target="#answer-modal1" href="#submit-modal" class="btn btn-default">Reply</a></div>
                    </div>
                    <br>
                                <div class="modal fade product_view" id="answer-modal1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <a href="#" data-dismiss="modal" class="class pull-right" style="color: black;"><span class="glyphicon glyphicon-remove"></span></a>
                                                <h3 class="modal-title">Reply</h3>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-12" style="word-wrap: break-word;">
                                                        <h3>Question:</h3>
                                                        <%=rs.getString("question")%>
                                                    <br>
                                                    <br>
                                                    <form action="helper/doReplyQuestion.jsp" method="post">
                                                         <div id="wrapperdiv">
                                                        
                                                         <textarea id="answer" name="answer" rows="5" cols="50" placeholder="Answer:"></textarea>  
                                                         <br>
                                                         <br>
                                                         <input type="hidden" value="<%=rs.getString("questionid")%>" name="questionid">
                                                         <input type="hidden" value="<%=rs.getString("emails")%>" name="to">
                                                         <input type="hidden" value="<%=rs.getString("name")%>" name="name">
                                                         <input type="hidden" value="Re:Question" name="subject">
                                                         <input type="hidden" value="Send" name="send">
                               
                                                         <input type="submit" class="btn btn-md btn-primary" value="Submit   " id="answersubmit">
                                                         <a href="#" class="btn btn-default" data-dismiss="modal">No</a>
                                                         </div>
                                                    </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
  	
  	</div>
        
         <div class="modal fade product_view" id="answer-modal1">
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
                                                        
                                                         <textarea id="answer" name="answer" rows="5" cols="50" placeholder="Answer:"></textarea>  
                                                         <br>
                                                         <br>
                                                         <input type="hidden" value="" name="transactionid">
                               
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
