/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.sql.*;

/**
 *
 * @author Darien
 */
@WebServlet(name = "UploaderHATS", urlPatterns = {"/UploaderHATS"})
public class FileUploaderHATS extends HttpServlet {
      private final String UPLOAD_DIRECTORY = "C:/Users/Darien/Documents/NetBeansProjects/Recruitment/uploads/HATS";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
       
        String name = "";
        String transactionid = "";
         //process only if its multipart content
        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                                         new DiskFileItemFactory()).parseRequest(request);
              
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        name = new File(item.getName()).getName();
                        //item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                        item.write( new File(getServletContext().getRealPath("/")+"../../uploads/HATS"+ File.separator + name));
                    
                       
                    }
                     if( item.isFormField() )
                    {
                      String fieldName = item.getFieldName();
                      
                       if (fieldName.equals("transactionid")){ //validating Hidden form tag name
                            transactionid = item.getString();
                            
                       }
                      
                    }
                }
           
               //File uploaded successfully
               request.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
               request.setAttribute("message", "File Upload Failed due to " + ex);
            }          
         
        }else{
            request.setAttribute("message",
                                 "Sorry this Servlet only handles file upload request");
        }
            
       
       response.sendRedirect("/Recruitment/helper/doAddHats.jsp?transactionid="+transactionid+"&hats="+name);
       //String jobid = (String) request.getSession(false).getAttribute("jobID");
       //request.getRequestDispatcher("/job.jsp").forward(request,response);
       //response.sendRedirect("/Recruitment/helper/doAddDocument.jsp?HATS="+name+"&transactionid="+jobid);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
   
}
