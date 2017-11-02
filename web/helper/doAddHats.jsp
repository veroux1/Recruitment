<%@ include file="connect.jsp"%>

<%
    String transactionid = request.getParameter("transactionid");
    String filename = request.getParameter("hats");
    
    String query = "update transactions set hats = '"+filename+"' where transactionid = '"+transactionid+"' ";
    st.executeUpdate(query);
    
    response.sendRedirect("../hatslist.jsp");
%>