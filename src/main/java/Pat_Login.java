

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Krishna Prasad
 */
public class Pat_Login extends HttpServlet {

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
            out.println("In Patient Login page");
            String uname = request.getParameter("pat_uname");
            String pass = request.getParameter("pat_pass");
            //long phone = Long.parseLong(uname);
            out.println("<br>Patient Username :"+uname+"<br>");
            out.println("Patient Password :"+pass+"<br>");
            Class.forName("com.mysql.jdbc.Driver");        
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/telemedicine","root","");
            //PreparedStatement stmt=con.prepareStatement("SELECT * FROM `users` where `uname`=? and `password`=?");
            
            //Class.forName("com.mysql.jdbc.driver");
            //Connection con=DriverManager.getConnection("jdbc:mysql://@localhost:3306:cse3","root","");
            PreparedStatement stmt=con.prepareStatement("select * from test_centers where center_pin=? and password=?");
            stmt.setString(1,uname);
            stmt.setString(2, pass);
            ResultSet rs = stmt.executeQuery();
            if(rs.next())
            {
                
                out.println("<br>Login successful");
                PreparedStatement ps=con.prepareStatement("SELECT * FROM `test_centers` where `center_pin`=?");
                //ps.setLong(1,phone);
                ps.setString(1, uname);
                ResultSet rs1 = ps.executeQuery();
                
                while(rs1.next())
                {
                    
                    String aadhar = rs1.getString("inc_aadhar");
                    con.close();
                    HttpSession session = request.getSession();
                    session.setAttribute("incharge_aadhar", aadhar);
                    session.setAttribute("pincode", uname);
                    request.getRequestDispatcher("test-Login.jsp").forward(request, response);
                    /*HttpSession s = request.getSession();
                    s.setAttribute("inc_aadhar",aadhar);
                    RequestDispatcher rd  = request.getRequestDispatcher("/Pat_Login");
                    rd.forward(request,response);
                    out.print(rs1.getString("inc_aadhar"));*/
                    //out.print(rs1.getString("password"));
                }
                
            }
            else
            {
                out.println("<br>Login failed");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace(out);
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
