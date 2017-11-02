<%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %>
<%@ include file="connect.jsp"%>
<%
	String image = request.getParameter("image");
        String userid = (String)session.getAttribute("userID");	
  
		String query = "update members set photo = '"+image+"' where userid = '"+userid+"' ";
		st.executeUpdate(query);
                response.sendRedirect("../userprofile.jsp?msg=Profile Picture Changed!");
            
               
	
%>