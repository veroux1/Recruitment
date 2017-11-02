<%@ include file="connect.jsp" %>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String rememberMe = request.getParameter("rememberMe");
	
	if(username.equals(""))
	{
		response.sendRedirect("../index.jsp?msg=Username Must be Filled!");
	}
	else if(password.equals(""))
	{
		response.sendRedirect("../index.jsp?msg=Password Must be Filled!");
	}
	else
	{
		String query = " select * from members where email = '"+username+"' and password = '"+password+"' ";
		ResultSet rs; 
		
		try{
			rs = st.executeQuery(query);
			
			if(rs.next())
			{
			
				session.setAttribute("user",rs.getString("name"));
				session.setAttribute("userPosition", rs.getString("role")); //buat select view
				session.setAttribute("userID",rs.getString("userid"));
                                session.setAttribute("location",rs.getString("location"));
				
				if(rememberMe == "rememberMe")
				{
					Cookie userCookie  = new Cookie("userCookie", rs.getString(1)); //cookie buat nama user
					userCookie.setMaxAge(3600);
					userCookie.setPath("/");
					response.addCookie(userCookie);
				}
				
				if(session.getAttribute("userPosition").equals("User"))
				{

					response.sendRedirect("../userprofile.jsp?msg=Login Success");
					
				}
				else
				{
					response.sendRedirect("../admin2.jsp?msg=Login Success");
				}
			}
			else
			{
				response.sendRedirect("../index.jsp?msg=Login Error");
			}
		}catch(Exception e)
		{
			out.print(e.getClass());
		}
	}
	
%>