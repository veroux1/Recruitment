<%@ include file="connect.jsp"%>
<%
        
                                   
        String unit = request.getParameter("unit");
        String department = request.getParameter("department");
        String transactionid=  request.getParameter("transactionid");
        String check = request.getParameter("check");
        
        if(check.equals("ok"))
        {
            String query = "update transactions set status = '0', last_status = 'Shortlist' where transactionid = '"+transactionid+"' ";
            st.executeUpdate(query);
        }
        else if(check.equals("no"))
        {
            String query = "update transactions set status = '-1', last_status = 'Shortlist' where transactionid = '"+transactionid+"' ";
            st.executeUpdate(query);
        }
        response.sendRedirect("../applicantlist.jsp?unit="+unit+"&department="+department);
%>