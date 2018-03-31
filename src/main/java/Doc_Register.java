
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Krishna Prasad
 */

@MultipartConfig(maxFileSize = 16177215) 
public class Doc_Register extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            try
            {
                out.println("In Doctor Registration page");
            String name = request.getParameter("doc_name");
            String gender = request.getParameter("doc_gender");
            String spec = request.getParameter("doc_spec");
            String phone = request.getParameter("doc_phone");
            //int phone = Integer.parseInt(sphone);
            String aadhar = request.getParameter("doc_aadhar");
            String license = request.getParameter("doc_lic");
            InputStream inputStream = null;
            Part filePart = request.getPart("lic_img");
            if (filePart != null) {
                inputStream = filePart.getInputStream();
            }
            String dob = request.getParameter("doc_dob");
            String email = request.getParameter("doc_email");
            String password = request.getParameter("doc_pass");
            out.println("Received input");
            
            Class.forName("com.mysql.jdbc.Driver");        
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/telemedicine","root","");
            con.setAutoCommit(false);
            PreparedStatement ps=con.prepareStatement("insert into doctors values(?,?,?,?,?,?,?,STR_TO_DATE(?,'%m/%e/%Y'),?,?)");
            ps.setString(1,name);
            ps.setString(2,gender);
            ps.setString(3,spec);
            ps.setString(4,phone);
            ps.setString(5,aadhar);
            ps.setString(6,license);
            
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBlob(7, inputStream);
            }  
            ps.setString(8,dob);
            ps.setString(9,email);
            ps.setString(10,password);
            
            out.println("<br>executing in query");
            int rs = ps.executeUpdate();
            out.println("<br>query executed");
            con.commit();
            if(rs!=0)
            {
                //out.println(rs.next());
                out.println("Registered successfully");
            }
            else
            {
                out.println("failed");
            }
            con.close();
            }
            catch(Exception e)
            {
            e.printStackTrace(out);
            }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Doc_Register.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Doc_Register.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Doc_Register.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Doc_Register.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
