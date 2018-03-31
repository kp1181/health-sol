/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DhanaPrasad
 */
public class AdminLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, final HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           final String name=request.getParameter("userName");
            
            
            try {
SAXParserFactory factory = SAXParserFactory.newInstance();
SAXParser saxParser = factory.newSAXParser();
DefaultHandler handler = new DefaultHandler() {
boolean buname = false;
boolean bpass = false;

public void startElement(String uri, String localName,String qName,
 Attributes attributes) throws SAXException {
//System.out.println("Start Element :" + qName);
if (qName.equalsIgnoreCase("uname")) {
buname = true;

}
 }
public void endElement(String uri, String localName,
String qName) throws SAXException {
//System.out.println("End Element :" + qName);
}
public void characters(char ch[], int start, int length) throws SAXException {
 if (buname)
 {
 String s=new String(ch, start, length);

 if(s.equals(name))
 {
     try {
         response.sendRedirect("application.jsp");
     } catch (IOException ex) {
         ex.printStackTrace(out);
     }
 }
 else
     out.println("Wrong ");
 buname = false;
}
}
 };
 saxParser.parse("C:\\Users\\Krishna Prasad\\Documents\\NetBeansProjects\\health_sol\\src\\main\\webapp\\admin.xml", handler);
 } catch (Exception e) {
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
