package Servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SendPacket
 */
@WebServlet("/FlightTracker")
public class FlightTracker extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FlightTracker() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PreparedStatement statement = null;
		HttpSession session = request.getSession();
			
	    BaseConnection baseConnection = new BaseConnection();
	    Connection connection = baseConnection.DataSource();
		String fromAddr = request.getParameter("track");
		
		fromAddr = FLIGHT_ADDRESS+fromAddr;
		
		// TODO Auto-generated method stub
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<script type=\"text/javascript\">");
        out.println("window.open(\"http://www.flightwise.com\")");
        out.println("</script>");
        out.println("</body></html>");
        response.sendRedirect("index.jsp");
			
	}

	private static final String FLIGHT_ADDRESS = "http://www.flightwise.com/track/";
}
