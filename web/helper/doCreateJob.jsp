<%@ include file="connect.jsp"%>

<%
    
        
        
	String department = request.getParameter("department");
	String departmentID = "";
	
	String departmentQuery = " select departmentid from departments where department_name = '"+department+"' ";
	ResultSet rs0 = st.executeQuery(departmentQuery);
	
	if(rs0.next())
	{
		departmentID=rs0.getString("departmentid");
	}
	
        
        
        
	
	String position = request.getParameter("position");
	String location = request.getParameter("location");
	String seat = request.getParameter("seats");
	
	String education = request.getParameter("education");
	String FoS;
	String any = request.getParameter("any");
	
	if(any == null)
	{
		FoS = request.getParameter("FoS");
	}
	else
	{
		FoS = "Any Fields";
	}
	
	String experience = request.getParameter("experience");
	String language = request.getParameter("language");
	String description = request.getParameter("description");
	
	//create jobid
	String jobID;
	int ID;
	String stringID;
	
	String jobQuery =  "select jobid from jobs order by jobid desc limit 0,1";
	ResultSet rs = st.executeQuery(jobQuery);
	
	if(rs.next())
	{
		jobID = rs.getString(1);
		ID =   Integer.parseInt(jobID.substring(2))+1;
		stringID =  ID + "";
		jobID =  "JB"+String.format("%03d",ID);
	}
	else
	{
		jobID = "JB000";
	}
	
	
        
         int countSeat = 0;
         String cSeat = "";
         String query0 = "select seat from departments where departmentid = '"+departmentID+"'";
         ResultSet rs3 = st.executeQuery(query0);
                
         if(rs3.next())
         {
           countSeat = Integer.parseInt(rs3.getString("seat"))+Integer.parseInt(seat);
         }
        
	
	if(position.equals(""))
	{
		response.sendRedirect("../createjob.jsp?msg=Position Must be Filled!");
	}
	else if(location.equals(""))
	{
		response.sendRedirect("../createjob.jsp?msg=Location Must be Filled!");
	}
	else if(seat.equals(""))
	{
		response.sendRedirect("../createjob.jsp?msg=Seat(s) Must be Filled!");
	}
	else if(experience.equals(""))
	{
		response.sendRedirect("../createjob.jsp?msg=Year of Experience Must be Filled!");
	}
	else if(language.equals(""))
	{
		response.sendRedirect("../createjob.jsp?msg=Language Must be Filled!");
	}
	else if(description.equals(""))
	{
		response.sendRedirect("../createjob.jsp?msg=Job Description Must be Filled!");
	}
	else
	{
               
            
		String query1 = "insert into jobs values ( '"+jobID+"' , '"+departmentID+"' , '"+position+"' , '"+seat+"','"+location+"', 'created', '"+education+"', '"+FoS+"', '"+experience+"', '"+language+"', '"+description+"')";
		st.executeUpdate(query1);
                
                String query3 = "update departments set seat = '"+countSeat+"' where departmentid = '"+departmentID+"' ";
                st.executeUpdate(query3);
                
		response.sendRedirect("../admin2.jsp?msg=Job Ad Created");
		
	}
%>