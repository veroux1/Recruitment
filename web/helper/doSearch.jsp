<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="connect.jsp" %>

<%
	String filter = request.getParameter("filter");
	String search = request.getParameter("search");
	
	if(filter.equals("location"))
	{
		response.sendRedirect("../listjob.jsp?location="+filter+"&search="+search+"&name="+"&position=");
	}
	else if(filter.equals("position"))
	{
		response.sendRedirect("../listjob.jsp?position="+filter+"&search="+search+"&name="+"&location=");
	}
%>