<%@ include file="connect.jsp" %>

<%
    String transactionid = request.getParameter("transactionid");
    String query = "update transactions set hats_status = 'sent' where transactionid ='"+transactionid+"'";
    st.executeUpdate(query);
    
    response.sendRedirect("../hatslist.jsp");
   
    
%>