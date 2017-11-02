<%@ include file="connect.jsp"%>

<%
       
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String question = request.getParameter("question");
        
	String questionID;
	int ID;
	String stringID;
	
	String query =  "select questionid from questions order by questionid desc limit 0,1";
	ResultSet rs = st.executeQuery(query);
	
	if(rs.next())
	{
		questionID = rs.getString(1);
		ID =   Integer.parseInt(questionID.substring(2))+1;
		stringID =  ID + "";
		questionID =  "QS"+String.format("%03d",ID);
	}
	else
	{
		questionID = "QS000";
	}
        
        String queryInsert = "insert into questions values ( '"+questionID+"' , '"+email+"' , '"+name+"' , '"+question+"', 'no reply')";
	st.executeUpdate(queryInsert);
	
        response.sendRedirect("../index.jsp");
%>