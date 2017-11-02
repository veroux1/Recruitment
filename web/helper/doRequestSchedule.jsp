<%@ include file="connect.jsp" %>

<%
    String date1 = request.getParameter("date1");
    String time1 = request.getParameter("time1");
    String date2 = request.getParameter("date2");
    String time2 = request.getParameter("time2");
    String transactionid = request.getParameter("transactionid");
    
    
        String rescheduleID;
	
	int ID;
	String stringID;
	
	String getQuery =  "select rescheduleid from reschedules order by rescheduleid desc limit 0,1";
	ResultSet rs = st.executeQuery(getQuery);
	

    
    
    String query = "update reschedules set option_date1 = '"+date1+"' , option_time1 = '"+time1+"', option_date2 = '"+date2+"', option_time2 = '"+time2+"', status = 'requested' where transactionid = '"+transactionid+"' ";
    st.executeUpdate(query);
        
    
    
    response.sendRedirect("../userprofile.jsp?msg=Your request is being process");
%>