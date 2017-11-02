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
	
        session.setAttribute("departmentid_r", departmentID);
        
        
	
	String position = request.getParameter("position");
        session.setAttribute("position_r", position);
        
	String location = request.getParameter("location");
        session.setAttribute("location_r", location);
	
	
	
	
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
	
        session.setAttribute("jobid_r", jobID);
	
        
        String transactionid;
	
	
	String idQuery =  "select transactionid from transactions order by transactionid desc limit 0,1";
	ResultSet rs3 = st.executeQuery(idQuery);
	
	if(rs3.next())
	{
		transactionid = rs3.getString(1);
		ID =   Integer.parseInt(transactionid.substring(2))+1;
		stringID =  ID + "";
		transactionid =  "TR"+String.format("%03d",ID);
	}
	else
	{
		transactionid = "TR000";
	}
	session.setAttribute("transactionid_r", transactionid);
        
                String rescheduleID;
	
                int scheduleID;
                String stringScheduleID;

                String getQuery =  "select rescheduleid from reschedules order by rescheduleid desc limit 0,1";
                ResultSet rsGet = st.executeQuery(getQuery);

                if(rsGet.next())
                {
                        rescheduleID = rsGet.getString(1);
                        scheduleID =   Integer.parseInt(rescheduleID.substring(2))+1;
                        stringScheduleID =  scheduleID + "";
                        rescheduleID =  "RE"+String.format("%03d",scheduleID);
                }
                else
                {
                        rescheduleID = "RE000";
                }
                session.setAttribute("rescheduleid_r", rescheduleID);
               
	
            
		
               
                
		response.sendRedirect("../uploadCV.jsp");
	
%>