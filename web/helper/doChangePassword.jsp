    <%@ page import="java.lang.*" %>
    <%@ page import="java.io.*" %>
    <%@ include file="connect.jsp"%>
    
<%   
    String oldpassword = request.getParameter("oldpassword");
    String newpassword = request.getParameter("newpassword");
    String renewpassword = request.getParameter("renewpassword");
    String userID =(String)session.getAttribute("userID");
    
        int alpha = 0;
	int numeric = 0;
	
	
	int i = 0;
	for(i=0;i<newpassword.length();i++)
	{
		if(Character.isDigit(newpassword.toCharArray()[i]))
		{
			numeric=1;
		}
		else
		{
			alpha=1;
		}
	}
        if(oldpassword.equals(""))
        {
            response.sendRedirect("../changepassword.jsp?msg=Old Password Must be Filled!");
        }
        else if(newpassword.equals(""))
	{
		response.sendRedirect("../changepassword.jsp?msg=New Password Must be Filled!");
	}
        else if(newpassword.length()<8)
	{
		response.sendRedirect("../register.jsp?msg=Password Minimum Length is 8!");
	}
        else if(!newpassword.equals(renewpassword))
        {
                response.sendRedirect("../changepassword.jsp?msg=Confirm Password is Not Same!");
        }
        else
        {
            String query = "update members set password = '"+newpassword+"' , confirmpassword = '"+renewpassword+"' where userid = '"+userID+"' ";
		st.executeUpdate(query);
		response.sendRedirect("../userprofile.jsp?msg=Password Changed");
        }
        
%>
