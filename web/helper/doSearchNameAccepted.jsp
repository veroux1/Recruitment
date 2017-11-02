<%
    String searchname = request.getParameter("searchname");
    
  
    response.sendRedirect("../accepted.jsp?searchname="+searchname);
  
    
%>