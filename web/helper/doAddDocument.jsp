<%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %>
<%@ include file="connect.jsp"%>
<%
	String cv = request.getParameter("cv");
	String rform =  request.getParameter("rform");
        String userid = (String)session.getAttribute("userID");
        String jobid =  request.getParameter("jobid");
        String status = "Shortlist";
        
        
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
        
        
        
        String transactionid;
	int ID;
	String stringID;
	
	String idQuery =  "select transactionid from transactions order by transactionid desc limit 0,1";
	ResultSet rs = st.executeQuery(idQuery);
	
	if(rs.next())
	{
		transactionid = rs.getString(1);
		ID =   Integer.parseInt(transactionid.substring(2))+1;
		stringID =  ID + "";
		transactionid =  "TR"+String.format("%03d",ID);
	}
	else
	{
		transactionid = "TR000";
	}
        
        
        String checkQuery = "select * from transactions where userid = '"+userid+"' and (status != '-1' and status != '-2')";
        ResultSet rs1 = st.executeQuery(checkQuery);
        if(rs1.next())
        {
            response.sendRedirect("../job.jsp?msg=You've applied job and your application is still under process");
        }
        else
        {
                
                
            
		String query = "update members set cv = '"+cv+"' , form = '"+rform+"' where userid = '"+userid+"' ";
		st.executeUpdate(query);
               
            
               String queryTransaction = "insert into transactions values ( '"+transactionid+"' , '"+userid+"' , '"+jobid+"' , '"+status+"', 'no data yet', 'no data yet', 'no data yet', 'no data yet', 'no data yet' ,'no data yet' ,'no data yet' ,'no data yet' ,'no data yet' ,'no data yet' ,'no data yet' ,'no data yet' ,'no data yet' ,'no data yet','no data yet','no data','no data','no data','no data', '-')";
               st.executeUpdate(queryTransaction);
               
               String queryReschedule = "insert into reschedules values ( '"+rescheduleID+"' , '"+transactionid+"' , 'no request' , 'no request', 'no request', 'no request', 'no request' )";
               st.executeUpdate(queryReschedule);
               
	       response.sendRedirect("../job.jsp?msg=Thank You for applying!");
        }
%>