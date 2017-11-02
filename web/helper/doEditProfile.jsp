<%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %>
<%@ include file="connect.jsp"%>
<%
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String date = request.getParameter("birthdate");
        String prevcom = request.getParameter("prevcom");
        String prevpos = request.getParameter("prevpos");
        String gender = request.getParameter("gender");
        String age = request.getParameter("age");
        String birthplace = request.getParameter("birthplace");
        String address = request.getParameter("address");
        String idcard = request.getParameter("idcard");
	
        String userID = (String)session.getAttribute("userID");
        
	int alpha = 0;
	int numeric = 0;
	
	
	int i = 0;
	
	
	int check = 0;
	for(i=0;i<phone.length();i++)
	{
		if(Character.isDigit(phone.toCharArray()[i]))
		{
			check=1;
		}
		else
		{
			check=0;
			break;
		}
	}
	
	int checkEmails = 0;
	int countAt = 0;
	
	for(i=0;i<email.length();i++)
	{
		if(email.toCharArray()[i] == '@')
		{
			countAt++;
		}
	}
	
	
	
		if(!email.contains("@") && !email.contains("."))
		{
			checkEmails = 0;
		}
		else if(email.contains(".@") || email.contains("@."))
		{
			checkEmails = 0;
		}
		else if(!email.endsWith(".com"))
		{
			checkEmails = 0;
		}
		else if(countAt != 1)
		{
			checkEmails = 0;
		}
		else
		{
			checkEmails = 1;
		}
		
		
	int flag = 0;
	
	if(name.equals(""))
	{
		flag++;
		response.sendRedirect("../editprofile.jsp?msg=Username Must be Filled!");
	}
        else if(age.equals(""))
	{
		flag++;
		response.sendRedirect("../editprofile.jsp?msg=Age Must be Filled!");
	}
        else if(birthplace.equals(""))
	{
		flag++;
		response.sendRedirect("../editprofile.jsp?msg=Birthplace Must be Filled!");
	}
        
        else if(address.equals(""))
	{
		flag++;
		response.sendRedirect("../editprofile.jsp?msg=Address Must be Filled!");
	}
        else if(idcard.equals(""))
	{
		flag++;
		response.sendRedirect("../editprofile.jsp?msg=Identity Card No. Must be Filled!");
	}
	else if(name.length()<3 || name.length()>50)
	{
		flag++;
		response.sendRedirect("../editprofile.jsp?msg=Name Length Must Between 3 and 50 Characters!");
	}
	else if(phone.equals(""))
	{
		flag++;
		response.sendRedirect("../editprofile.jsp?msg=Phone Number Must be Filled!");
	}
	else if(check == 0)
	{
		flag++;
		response.sendRedirect("../editprofile.jsp?msg=Phone Number Must be Numeric!");
	}
	else if(phone.length()<5)
	{	
		flag++;
		response.sendRedirect("../editprofile.jsp?msg=Phone Number Minimum Length is 8!");
	}
	else if(checkEmails == 0)
	{
		flag++;
		response.sendRedirect("../editprofile.jsp?msg=Wrong Email Format!");
	}
	
	if(flag == 0)
	{
		String query = "update members set name = '"+name+"', gender = '"+gender+"' , age = '"+age+"' , phone = '"+phone+"', email = '"+email+"', birthplace = '"+birthplace+"' , birthdate = '"+date+"', address = '"+address+"'  , idcard = '"+idcard+"' , prev_company = '"+prevcom+"', prev_position = '"+prevpos+"' where userid = '"+userID+"' ";
		st.executeUpdate(query);
		response.sendRedirect("../userprofile.jsp?msg=Update Complete");
               
	}
	
%>