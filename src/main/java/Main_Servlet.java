import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig(maxFileSize = 16177215) 
public class Main_Servlet extends HttpServlet {


protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();
    try 
    {
      
        // Class.forName("oracle.jdbc.driver.OracleDriver");
         //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","admin","admin");
         //Statement st=con.createStatement();
         //out.println("connection established successfully...!!"+"<br>");
         
         
         
         
         String pat_login = request.getParameter("pat_login");
         String pat_register = request.getParameter("pat_register");
         
         String doc_login = request.getParameter("doc_login");
         String doc_register = request.getParameter("doc_register");
         
         out.println("pat_login is "+pat_login);
         out.println("<br>");
         out.println("pat_register is "+pat_register);
         out.println("<br>");
         out.println("doc_login is "+doc_login);
         out.println("<br>");
         out.println("doc_register is "+doc_register);
         out.println("<br>");
         
         
         if(pat_login!=null)
         {
             RequestDispatcher rd  = request.getRequestDispatcher("/Pat_Login");
             rd.forward(request,response);
         }
         if(pat_register!=null)
         {
             RequestDispatcher rd  = request.getRequestDispatcher("/Pat_Register");
             rd.forward(request,response);
             //response.sendRedirect("/Pat_Register.java");
         }
         if(doc_login!=null)
         {
             RequestDispatcher rd  = request.getRequestDispatcher("/Doc_Login");
             rd.forward(request,response);
             //response.sendRedirect("/Doc_Login.java");
         }
         if(doc_register!=null)
         {
             RequestDispatcher rd  = request.getRequestDispatcher("/Doc_Register");
             rd.forward(request,response);
             //response.sendRedirect("/Doc_Register.java");
         }
         
         
         /*
         String pat_uname = request.getParameter("pat_uname");
         String pat_pass = request.getParameter("pat_pass");
         
         String doc_login = request.getParameter("doc_login");
         String doc_register = request.getParameter("doc_register");
         
         if(pat_uname!=null && pat_pass!=null)
         {
             Strin qrl= new String("select * from patlog where uname="+pat_uname+" and upass=+"pat_pass+";")
             ResultSet rs=st.executeQuery( "'select * from patlog where uname='+pat_uname+' and upass='+pat_pass");  
                ps.setString(1,pat_uname);  
                ps.setString(2,pat_pass);  
      
            ResultSet rs=ps.executeQuery();  
            
         
         //ResultSet rs=st.executeQuery("select * from doctors1");
 
        while (rs.next()) {

                    out.print("valid user");
                    return;
                    }

            out.print("<br/>"); //Move to the next line to print the next row.  
            }
         else 
             out.print("please renter");
        con.close();*/
    }

    

    
    catch(Exception ex){
       out.println(ex);
    }
    
}


@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    processRequest(request, response);
}


@Override
protected void doPost(HttpServletRequest request, HttpServletResponse  response)
        throws ServletException, IOException {
     processRequest(request, response);
}
}