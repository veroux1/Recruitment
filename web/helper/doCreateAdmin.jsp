<%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %>
<%@ include file="connect.jsp"%>
<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String confirm = request.getParameter("cpassword");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
        String location = request.getParameter("location");
	
	
	String role = "Admin";
	String userID;
	
	int ID;
	String stringID;
	
	String userQuery =  "select userid from members order by userid desc limit 0,1";
	ResultSet rs = st.executeQuery(userQuery);
	
	if(rs.next())
	{
		userID = rs.getString(1);
		ID =   Integer.parseInt(userID.substring(2))+1;
		stringID =  ID + "";
		userID =  "US"+String.format("%03d",ID);
	}
	else
	{
		userID = "US000";
	}
	
	int alpha = 0;
	int numeric = 0;
	
	
	int i = 0;
	for(i=0;i<password.length();i++)
	{
		if(Character.isDigit(password.toCharArray()[i]))
		{
			numeric=1;
		}
		else
		{
			alpha=1;
		}
	}
	
	/*int alphaName=0;
	for(i=0;i<fullname.length();i++)
	{
		if(Character.isLetter(fullname.toCharArray()[i]))
		{
			alphaName=1;
		}
		else if(fullname.toCharArray()[i] == ' ')
		{
			alphaName=1;
		}
		else
		{
			alphaName=0;
			break;
		}
		
	}*/
	
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
	
	/*int contains=0;
		if(address.contains("Street"))
		{
			contains=1;
		}
		else
		{
			contains=0;
		}*/
		
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
		response.sendRedirect("../createnewadmin.jsp?msg=Username Must be Filled!");
	}
	else if(name.length()<5 || name.length()>15)
	{
		flag++;
		response.sendRedirect("../createnewadmin.jsp?msg=Length Must Between 5 and 15 Characters!");
	}
	else if(password.equals(""))
	{
		flag++;
		response.sendRedirect("../createnewadmin.jsp?msg=Password Must be Filled!");
	}
	else if(alpha==0 || numeric==0)
	{
		flag++;
		response.sendRedirect("../createnewadmin.jsp?msg=Password Must be in AlphaNumeric!");
	}
	else if(password.length()<8)
	{
		flag++;
		response.sendRedirect("../createnewadmin.jsp?msg=Password Minimum Length is 8!");
	}
	else if(!confirm.equals(password))
	{
		flag++;
		response.sendRedirect("../createnewadmin.jsp?msg=Password and Confirmation Password Must be Same!");
	}
	/*else if(alphaName == 0)
	{
		flag++;
		response.sendRedirect("../register.jsp?msg=Fullname Must be Alphabet!");
	}*/
	else if(phone.equals(""))
	{
		flag++;
		response.sendRedirect("../createnewadmin.jsp?msg=Phone Number Must be Filled!");
	}
	else if(check == 0)
	{
		flag++;
		response.sendRedirect("../createnewadmin.jsp?msg=Phone Number Must be Numeric!");
	}
	else if(phone.length()<5)
	{	
		flag++;
		response.sendRedirect("../createnewadmin.jsp?msg=Phone Number Minimum Length is 8!");
	}
	/*else if(contains==0)
	{
		flag++;
		response.sendRedirect("../register.jsp?msg=Address Must be Contains 'Street'!");
	}*/
	else if(checkEmails == 0)
	{
		flag++;
		response.sendRedirect("../createnewadmin.jsp?msg=Wrong Email Format!");
	}
	
	if(flag == 0)
	{
		String query = "insert into members values ( '"+userID+"' , '"+name+"' , '-' , '-' ,'"+role+"' , '"+phone+"', '"+email+"', '-' ,'-', '-' , '-' ,'"+password+"', '"+confirm+"' , '-', '-', '-' ,'"+location+"','-','-')";
		st.executeUpdate(query);
		response.sendRedirect("../admin2.jsp?msg=Registration Complete");
	}
	
%>