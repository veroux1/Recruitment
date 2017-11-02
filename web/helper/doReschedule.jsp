<%@ include file="connect.jsp"%>
<%
    String transactionid = request.getParameter("transactionid");
    String status = request.getParameter("status");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String location = request.getParameter("location");
    
    if(status.equals("1"))
    {
        String query = "update transactions set hr_interview_date = '"+date+"' , hr_interview_time = '"+time+"' where transactionid = '"+transactionid+"'";
        st.executeUpdate(query);
        
        String query1 = "update reschedules set status = 'no request' where transactionid = '"+transactionid+"'";
        st.executeUpdate(query1);
    }
    else if(status.equals("2"))
    {
        String query = "update transactions set user_interview_date = '"+date+"' , user_interview_time = '"+time+"' where transactionid = '"+transactionid+"'";
        st.executeUpdate(query);
        
        String query1 = "update reschedules set status = 'no request' where transactionid = '"+transactionid+"'";
        st.executeUpdate(query1);
    }
    response.sendRedirect("../hiring.jsp?unit="+location);
%>