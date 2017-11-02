<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ include file="connect.jsp"%>
 
 <%
     String transactionid = request.getParameter("transactionid");
     int status = Integer.parseInt(request.getParameter("status"));
     int last_status = status;
     String location = request.getParameter("location");
     String currentStatus = "";
     String currentLastStatus = "";
     String check = request.getParameter("check");
     String name = request.getParameter("name");
     String idate = request.getParameter("idate");
     String ivenue = request.getParameter("venue");
     String itime = request.getParameter("itime");
     String interviewer_name = request.getParameter("iname");
     String interviewer_email =  request.getParameter("iemail");
     String udate = request.getParameter("udate");
     String uvenue = request.getParameter("uvenue");
     String utime = request.getParameter("utime");
     String user_name = request.getParameter("uname");
     String user_email =  request.getParameter("uemail");
     String memberemail = request.getParameter("email");
     String membername = request.getParameter("membername");
     String department = request.getParameter("department");
     String position = request.getParameter("jobpos");
     String checkyes = request.getParameter("checkyes");
     String note = request.getParameter("note");
     String iphone = request.getParameter("iphone");
     String uphone = request.getParameter("uphone");
    
                Date date = new Date();
                String todayDate = new String("");
                SimpleDateFormat sdf = new SimpleDateFormat("dd-MMMM-yyyy");
                todayDate = sdf.format(date);
     
     
                
               
     
     if(!check.equals("") && check.equals("ok"))
     {
        
            status +=1;
            last_status = status;
            currentStatus =  status + "";
            currentLastStatus = last_status + "";

            if(status == 1)
            {
                
                
                
                String query = "update transactions set status = '"+currentStatus+"', latest_processed_date = '"+todayDate+"', hr_interview_date = '"+idate+"', hr_interview_time = '"+itime+"', hr_interview_venue = '"+ivenue+"' , hr_interviewer_name = '"+interviewer_name+"' , hr_interviewer_email = '"+interviewer_email+"', hr_interviewer_phone = '"+iphone+"' ,last_status = '"+currentLastStatus+"' where transactionid = '"+transactionid+"' ";
                st.executeUpdate(query);
               
            }
            else if(status == 2)
            {  
                
               
                String query = "update transactions set status = '"+currentStatus+"', latest_processed_date = '"+todayDate+"', user_interview_date = '"+udate+"', user_interview_time = '"+utime+"', user_interview_venue = '"+uvenue+"', user_interviewer_name = '"+user_name+"', user_interviewer_email = '"+user_email+"', user_interviewer_phone = '"+uphone+"' ,last_status = '"+currentLastStatus+"' where transactionid = '"+transactionid+"' ";
                st.executeUpdate(query); 
                
                String query2 = "update reschedules set status = 'no request' where transactionid = '"+transactionid+"' ";
                st.executeUpdate(query2); 
               
            }
            else if(status == 3)
            {
                 String query = "update transactions set status = '"+currentStatus+"', latest_processed_date = '"+todayDate+"', last_status = '"+currentLastStatus+"' where transactionid = '"+transactionid+"' ";
                 st.executeUpdate(query); 
            }
            else if(status == 5)
            {
                 String query = "update transactions set status = '"+currentStatus+"', latest_processed_date = '"+todayDate+"', last_status = '"+currentLastStatus+"' where transactionid = '"+transactionid+"' ";
                 st.executeUpdate(query); 
            }
             else
            {
                 String query = "update transactions set status = '"+currentStatus+"', latest_processed_date = '"+todayDate+"', last_status = '"+currentLastStatus+"' where transactionid = '"+transactionid+"' ";
                 st.executeUpdate(query); 
            }
            
            response.sendRedirect("doSendEmail.jsp?name="+membername+"&to="+memberemail+"&status="+currentStatus+"&subject=test"+"&unit="+location+"&send=send&jobpos="+position+"&department="+department+"&laststatus="+currentLastStatus+"&idate="+idate+"&itime="+itime+"&ivenue="+ivenue+"&udate="+udate+"&utime="+utime+"&uvenue="+uvenue+"&intername1="+interviewer_name+"&intername2="+user_name);

            //response.sendRedirect("../hiring.jsp?msg=Applicant processed&unit="+location);
         
     }
     else if(!check.equals("") && check.equals("no"))
     {
          if(checkyes == null)
          {
            status = -1;
            currentStatus = status + "";
            currentLastStatus = last_status + "";
            String query = "update transactions set status = '"+currentStatus+"', latest_processed_date = '"+todayDate+"', last_status = '"+currentLastStatus+"' where transactionid = '"+transactionid+"' ";
            st.executeUpdate(query);
            response.sendRedirect("doSendEmail.jsp?name="+membername+"&to="+memberemail+"&status="+currentStatus+"&subject=test"+"&unit="+location+"&send=send&jobpos="+position+"&department="+department+"&laststatus="+currentLastStatus+"&idate="+idate+"&itime="+itime+"&ivenue="+ivenue+"&udate="+udate+"&utime="+utime+"&uvenue="+uvenue+"&intername1="+interviewer_name+"&intername2="+user_name);
          }
          else if(checkyes.equals("checkyes"))
          {
            status = -3;
            currentStatus = status + "";
            currentLastStatus = last_status + "";
            String query = "update transactions set status = '"+currentStatus+"', latest_processed_date = '"+todayDate+"', last_status = '"+currentLastStatus+"', note = '"+note+"' where transactionid = '"+transactionid+"' ";
            st.executeUpdate(query);
            response.sendRedirect("doSendEmail.jsp?name="+membername+"&to="+memberemail+"&status="+currentStatus+"&subject=test"+"&unit="+location+"&send=send&jobpos="+position+"&department="+department+"&laststatus="+currentLastStatus+"&idate="+idate+"&itime="+itime+"&ivenue="+ivenue+"&udate="+udate+"&utime="+utime+"&uvenue="+uvenue+"&intername1="+interviewer_name+"&intername2="+user_name);
          }
          //response.sendRedirect("../hiring.jsp?msg=Applicant processed&unit="+location);
     }
     else if(!check.equals("") && check.equals("hold"))
     {
          status = -2;
          currentStatus = status + "";
          currentLastStatus = last_status + "";
          String query = "update transactions set status = '"+currentStatus+"', latest_processed_date = '"+todayDate+"', last_status = '"+currentLastStatus+"' where transactionid = '"+transactionid+"' ";
          st.executeUpdate(query);
          response.sendRedirect("doSendEmail.jsp?name="+membername+"&to="+memberemail+"&status="+currentStatus+"&subject=test"+"&unit="+location+"&send=send&jobpos="+position+"&department="+department+"&laststatus="+currentLastStatus+"&idate="+idate+"&itime="+itime+"&ivenue="+ivenue+"&udate="+udate+"&utime="+utime+"&uvenue="+uvenue+"&intername1="+interviewer_name+"&intername2="+user_name);

          //response.sendRedirect("../hiring.jsp?msg=Applicant processed&unit="+location);
     }
 %>