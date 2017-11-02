<%@include file="connect.jsp"%>
<%
    String transactionid = request.getParameter("transactionid");
    String reason = request.getParameter("reason");
    
    String query = "update transactions set status = '-1', ol_reject_reason = '"+reason+"' where transactionid = '"+transactionid+"' ";
    st.executeUpdate(query);
    
    response.sendRedirect("../userprofile.jsp?msg=Thank You");
%>