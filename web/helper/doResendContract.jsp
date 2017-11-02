<%@include file="connect.jsp"%>
<%
    String transactionid = request.getParameter("transactionid");
    String location = (String)session.getAttribute("location");
    
    String query = "update transactions set status = '4' where transactionid = '"+transactionid+"' ";
    st.executeUpdate(query);
    
    response.sendRedirect("../rejected.jsp?unit="+location+"&month=&year=&potential=");
%>