
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Krishna Prasad
 */
public class Pat_Register extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("In Patient Registration page");
            out.println("In a page");
            out.println("Hi");
            String centerName = request.getParameter("center_name");
            out.println("<br>Hi"+centerName);
            String centerAddress = request.getParameter("center_address");
            out.println("<br>Hi"+centerAddress);
            String pincode = request.getParameter("center_pin");
            out.println("<br>Hi"+pincode);
            String name = request.getParameter("inc_name");
            out.println("<br>Hi"+name);
            String gender = request.getParameter("inc_gender");
            out.println("<br>Hi"+gender);
            String aadhar = request.getParameter("inc_aadhar");
            out.println("<br>Hi"+aadhar);
            String dob = request.getParameter("inc_dob");
            out.println("<br>Hi"+dob);
            String phone = request.getParameter("inc_phone");
            out.println("<br>Hi"+phone);
            String password = request.getParameter("inc_pass");
            out.println(dob);
            out.println("<br>Hi");
            
            //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","admin","admin");
            
            //con.setAutoCommit(false); 
            Class.forName("com.mysql.jdbc.Driver");        
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/telemedicine","root","");
            con.setAutoCommit(false);
            PreparedStatement ps=con.prepareStatement("insert into test_centers values(?,?,?,?,?,?,STR_TO_DATE(?,'%m/%e/%Y'),?,?)");
            ps.setString(1,centerName);
            ps.setString(2,centerAddress);
            ps.setString(3,pincode);
            ps.setString(4,name);
            ps.setString(5,gender);
            ps.setString(6,aadhar);
            ps.setString(7,dob);
            ps.setString(8,phone);
            ps.setString(9,password);
            
            int rs = ps.executeUpdate();
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
            //TO_DATE('27/07/1998', 'DD/MM/YYYY')
            /*int i = stmt.executeUpdate("insert into patients values('"+name+"', '"+gender+"', '"+aadhar+"', TO_DATE('"+dob+"','MM/DD/YYYY'),'"+phone+"','"+password+"')");
            //int i = stmt.executeUpdate("insert into patients values('"+name+"', '"+gender+"', '"+aadhar+"',null,'"+phone+"', '"+password+"')");
            if(i>0)
            {
                out.println("<br>Inserted successfully");
            }
            else
            {
                out.println("<br>Insertion failure");
            }*/
            //int i = stmt.executeUpdate("insert into patients values('"+name+"','"+gender"','"+aadhar+"','"+dob+"','"+phone+"','"+password+"')");
        }
        catch(Exception e)
        {   
            out.println(e);
            //e.printStackTrace(out);
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
        processRequest(request, response);
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
