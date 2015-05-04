package Servlets;
// Import required java libraries
import java.io.*;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.servlet.*;
import javax.servlet.http.*;

// Extend HttpServlet class
public class ContactUs extends HttpServlet {
 
  /**
	 * 
	 */
	private static final long serialVersionUID = 3676045150819074353L;
// Method to handle GET method request.
  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
	  response.sendRedirect("index.jsp#carry");
      // Set response content type
      response.setContentType("text/html");
      
      String name = request.getParameter("name");
      
      String email = request.getParameter("email");
      
      String subject = request.getParameter("subject");
      
      String message = request.getParameter("message");

		final String fromEmail = "shipiteasy.info@gmail.com"; //requires valid gmail id.
      final String password = "rrproject"; // correct password for gmail id.
      final String toEmail = "shipiteasy.info@gmail.com"; // can be any email id.
       
      System.out.println("TLSEmail Start");
      Properties props = new Properties();
      props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
      props.put("mail.smtp.port", "587"); //TLS Port
      props.put("mail.smtp.auth", "true"); //enable authentication
      props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
       
              //create Authenticator object to pass in Session.getInstance argument
      Authenticator auth = new Authenticator() {
          //override the getPasswordAuthentication method
          protected PasswordAuthentication getPasswordAuthentication() {
              return new PasswordAuthentication(fromEmail, password);
          }
      };
      Session session = Session.getInstance(props, auth);
       
      EmailUtil.sendEmail(session, toEmail, "ShipItEasy Contact Customer", "First Name: " +name+"\nSubject: "+subject+"\nE-Mail Address: "+email+"\nComments: "+message);
      
  }
  // Method to handle POST method request.
  public void doPost(HttpServletRequest request,
                     HttpServletResponse response)
      throws ServletException, IOException {
     doGet(request, response);
  }
}