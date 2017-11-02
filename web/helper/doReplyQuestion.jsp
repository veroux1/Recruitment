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
                String answer = request.getParameter("answer");
               
                String admin_name = (String)session.getAttribute("user");
                
                
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
                    
                   m_text = "Dear Mr./Mrs. "+name+",<br><br>Warmest greeting from Hotel Aryaduta.<br>Thank you for your interest in growing with our company. "+answer+"<br><br><br>Regards,<br>"+admin_name;
                    
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
                    
                  
                        response.sendRedirect("../question.jsp");
                  
                }catch (Exception e)
                {
                    out.println(e);
                }
                
            }
        %>
        
       
