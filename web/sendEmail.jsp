<%-- 
    Document   : sendEmail
    Created on : Sep 19, 2017, 8:54:09 AM
    Author     : Darien
--%>
<%@page import="javax.mail.Message.RecipientType"%>
<%@page import="java.util.Properties" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sending An Email</title>
    </head>
    <body onload="displayResult()">
        <h1>Sending An Email</h1>
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
                
                if(request.getParameter("to") != null)
                {
                    m_to = request.getParameter("to");
                }
                
                if(request.getParameter("subject") != null)
                {
                    m_subject = request.getParameter("subject");
                }
                
                if(request.getParameter("message") != null)
                {
                    m_text = "<h1>Welcome to Web App Dev and Design!</h1><br>";
                    m_text = m_text.concat(request.getParameter("message")); //combine with the previous text
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
                }catch (Exception e)
                {
                    out.println(e);
                }
                
            }
        %>
        
        <form name="myForm" action="sendEmail.jsp" method="get">
            <table border="0">
                <tr>
                    <td>To : </td>
                    <td><input type="text" name="to" value="" size="50"></td>
                </tr>
                <tr>
                    <td>Subject : </td>
                    <td><input type="text" name="subject" value="" size="50"></td>
                </tr>
                 <tr>
                    <td>Message : </td>
                    <td><textarea name="message" rows="4" cols="50" value="" size="50"></textarea></td>
                </tr>
            </table>
            <input type="hidden" name="hidden" value="<%=result%>" size="50">
            <input type="reset" name="clear" value="Clear" size="50">
            <input type="submit" name="send" value="Send" size="50">
        </form>
            
            <script language="JavaScript">
                function displayResult(){
                    if(document.myForm.hidden.value === "1"){
                        alert("Mail was sent!");
                    }
                }
            </script>
    </body>
</html>
