<%-- 
    Document   : sendEmail
    Created on : Sep 19, 2017, 8:54:09 AM
    Author     : Darien
--%>
<%@page import="javax.mail.Message.RecipientType"%>
<%@page import="java.util.Properties" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>


        <%!
            public static class SMTPAuthenticator extends Authenticator {
                
                public PasswordAuthentication getPasswordAuthentication () {
                    return new PasswordAuthentication("games.darien.matthew","twillight123");
                }
            }
        %>
        
        <%
            int result = 0; //if success change to 1
            
            if(request.getParameter("send") != null){
                String d_uname = "games.darien.matthew";
                String d_password = "twillight123";
                String d_host = "smtp.gmail.com";
                int d_port = 465;
                
                String m_to =  new String();
                String m_from = "games.darien.matthew@gmail.com";
                String m_subject = new String();
                String m_text = new String();
                String name = request.getParameter("name");
                String location = request.getParameter("unit");
                String status = request.getParameter("status");
                String admin_name = (String)session.getAttribute("user");
                String department = request.getParameter("department");
                String position = request.getParameter("jobpos");
                String laststatus = request.getParameter("laststatus");
                String idate = request.getParameter("idate");
                String itime = request.getParameter("itime");
                String ivenue = request.getParameter("ivenue");
                String udate = request.getParameter("udate");
                String utime = request.getParameter("utime");
                String uvenue = request.getParameter("uvenue");
                String interviewer_name = request.getParameter("intername1");
                String user_name = request.getParameter("intername2");
                
                if(request.getParameter("to") != null)
                {
                    m_to = request.getParameter("to");
                }
                
                if(request.getParameter("subject") != null)
                {
                    m_subject = request.getParameter("subject");
                }
                
                if(request.getParameter("name") != null)
                {
                    //m_text = "<h1>Welcome, "+ name +"</h1><br>";
                    if(status.equals("1"))
                    {
                        m_text = "Dear Mr./Mrs. "+name+",<br><br>Warmest greeting from Hotel Aryaduta.<br>Thank you for your interest in growing with our company.<br><br>We would like to have an interview with you for this opportunity on: <br><b>Date&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;: "+idate+"</b><br><b>Time&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;: "+itime+"</b><br><b>Venue&emsp;&emsp;&emsp;&nbsp;: "+ivenue+"</b><br><b>Interviewer&emsp;: "+interviewer_name+"</b><br><br>Regards,<br>"+admin_name;
                    }
                    else if(status.equals("2"))
                    {
                        m_text = "Dear Mr./Mrs. "+name+",<br><br>Warmest greeting from Hotel Aryaduta.<br>Thank you for your interest in growing with our company.<br><br>We would like to have second interview with you for this opportunity on: <br><b>Date&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;: "+udate+"</b><br><b>Time&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;: "+utime+"</b><br><b>Venue&emsp;&emsp;&emsp;&nbsp;: "+uvenue+"</b><br><b>Interviewer&emsp;: "+user_name+"</b><br><br>Regards,<br>"+admin_name;
                    }
                    else if(status.equals("3"))
                    {
                        m_text = "<h1>Welcome, "+ name +"3</h1><br>";
                    }
                    else if(status.equals("4"))
                    {
                        m_text = "<h1>Welcome, "+ name +"3</h1><br>We've sent you an Offering letter, please check at our website";
                    }
                    else if(status.equals("-1"))
                    {
                        if(laststatus.equals("0") || laststatus.equals("Shortlist"))
                        {
                            m_text = "Dear Mr./Mrs. "+name+",<br><br>We appreciate that you took the time to apply for the position of <b>"+position+"</b> with our company. We received applications from many people. After reviewing your submitted application materials, we have decided that we will not offer you an interview. <br><br>We appreciate that you are interested in our company. Please do apply again in the future should you see a job posting for which you qualify. <br>Again, thank you for applying. We wish you all the best. <br><br>Regards, <br>"+admin_name;
                    
                        }
                        else if(laststatus.equals("1"))
                        {
                             m_text = "Dear Mr./Mrs. "+name+",<br><br> Our interview team wants to thank you for taking the time to participate in our hiring process. This letter is to let you know that we have selected another candidate.<br><br>You were an exceptional candidate for our job and we hope that you apply for openings at Hotel Aryaduta, Tbk for which you qualify in the future. While you were not selected for the current opening, the interview team did not make this decision lightly. Your future applications will receive thorough review. <br><br> Again, thank you for taking the time to come to Hotel Aryaduta, Tbk to meet our interview team. We enjoyed meeting you and our discussions indicated that you have much to offer your next employer.<br><br>We wish you both personal and professional success in your job search and in the future. We appreciate your interest in our organization.<br><br>Regards,<br>"+admin_name;                
                        }
                         else if(laststatus.equals("2"))
                        {
                            m_text = "Dear Mr./Mrs. "+name+",<br><br> Thank you for taking the time to meet with our team about the "+position+" position at Hotel Aryaduta. We appreciate your professional experience and enjoyed interviewing you for the position.<br><br>Your background, skills, and accomplishments were reviewed carefully and, in this instance, we regret to advise you that we will not be progressing you further. We have offered the position to another applicant whom we think best meets our needs for the position.  I would like to inform you that competition for jobs at Hotel Aryaduta is always high and that we often have to make difficult choices between many strong candidates. <br><br> Now that we&acuteve had the chance to know more about you, we will be keeping your resume on file for future openings that better fit your profile.<br><br>Again, thank you for considering us as a potential employer. We wish you continued success in your career endeavors.<br><br>Regards,<br>"+admin_name;
                        }
                    }
                    //m_text = m_text.concat(request.getParameter("message")); //combine with the previous text
                }
                
                //Create a Properties Object
                Properties props = new Properties();
                
                //Create SMTPAuthenticator object
                SMTPAuthenticator auth = new SMTPAuthenticator();
                
                //Create a mail session object
                Session ses = Session.getInstance(props, auth);
                
                //Create Mime style email message object
                MimeMessage msg =  new MimeMessage(ses);
                msg.setContent(m_text, "text/html");
                msg.setSubject(m_subject);
                msg.setFrom(new InternetAddress(m_from));
                msg.setRecipient(RecipientType.TO, new InternetAddress(m_to));
                
                try {
                    Transport transport = ses.getTransport("smtps");
                    transport.connect(d_host, d_port, d_uname, d_password);
                    transport.sendMessage(msg, msg.getAllRecipients());
                    transport.close();
                    
                    result = 1;
                    if(status.equals("4"))
                    {
                        response.sendRedirect("../hiring.jsp?unit="+location+"&process=Offering Contract&page=1");
                    }
                    else
                    {
                        response.sendRedirect("../hiring.jsp?msg=Sent&unit="+location+"&process=Init. Qualification&page=1");
                    }
                }catch (Exception e)
                {
                    out.println(e);
                }
                
            }
        %>
        
       
