<%@ include file="connect.jsp"%>

<%
    String transactionid = request.getParameter("transactionid");
    String filename = request.getParameter("ol");
    String unit = request.getParameter("loc");
    String user_name = request.getParameter("username");
    String email = request.getParameter("email");
    String status = request.getParameter("status");
    
    String query = "update transactions set ol_filename = '"+filename+"' where transactionid = '"+transactionid+"' ";
    st.executeUpdate(query);
    
    response.sendRedirect("doSendEmail.jsp?to="+email+"&name="+user_name+"&status="+status+"&subject=announcement&send=Send&unit="+unit);
    //response.sendRedirect("../hiring.jsp?unit="+unit+"&process=Offering Contract&page=1");
    //response.sendRedirect("/Recruitment/helper/doAddOL.jsp?transactionid="+transactionid+"&ol="+name+"&loc="+loc+"&user_name="+user_name+"&email="+email+"&status="+status);
%>