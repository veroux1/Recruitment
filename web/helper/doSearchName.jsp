<%
    String searchname = request.getParameter("searchname");
    
  
    response.sendRedirect("../blacklist.jsp?searchname="+searchname);
  
    
%>