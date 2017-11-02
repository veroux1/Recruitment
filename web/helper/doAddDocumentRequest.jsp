<%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %>
<%@ include file="connect.jsp"%>
<%
    
        String cv = request.getParameter("cv");
	String rform =  request.getParameter("rform");
        String userid = (String)session.getAttribute("userID");
        String jobID =  request.getParameter("jobid");
        String departmentID = request.getParameter("department");
        String location = request.getParameter("location");
        String position = request.getParameter("position");
        String transactionid = request.getParameter("transactionid");
        String rescheduleID = request.getParameter("rescheduleid");
        String status = "Shortlist";
       
        
        
        
                String query1 = "insert into jobs values ( '"+jobID+"' , '"+departmentID+"' , '"+position+"' , '1','"+location+"', 'requested', 'requested', 'requested', 'requested', 'requested', 'requested')";
		st.executeUpdate(query1);
		
                String query3 = "insert into transactions values ( '"+transactionid+"' , '"+userid+"' , '"+jobID+"' , 'Shortlist' ,'requested','requested','requested' ,'requested' ,'requested','requested','requested','requested','requested','requested','requested','requested','requested','requested','requested','no data','no data','no data','no data','-')";
		st.executeUpdate(query3);
                
                String queryReschedule = "insert into reschedules values ( '"+rescheduleID+"' , '"+transactionid+"' , 'no request' , 'no request', 'no request', 'no request', 'no request' )";
                st.executeUpdate(queryReschedule);
                
            
		String query = "update members set cv = '"+cv+"' , form = '"+rform+"' where userid = '"+userid+"' ";
		st.executeUpdate(query);
               
            
               
               
	       response.sendRedirect("../job.jsp?msg=Thank You for applying!");
   
%>