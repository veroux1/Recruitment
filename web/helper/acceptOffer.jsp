<%@include file="connect.jsp"%>
<%
    String transactionid = request.getParameter("transactionid");
    
    String query = "update transactions set status = '5' where transactionid = '"+transactionid+"' ";
    st.executeUpdate(query);
    
    response.sendRedirect("../userprofile.jsp?msg=Thank You");
%>