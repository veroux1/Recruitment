<%
    String yearSearch = request.getParameter("yearSearch");
    String monthSearch = request.getParameter("monthSearch");
    String location = request.getParameter("location");
    
    
    
    response.sendRedirect("../rejected.jsp?unit="+location+"&year="+yearSearch+"&month="+monthSearch+"&potential=");
  
    
%>