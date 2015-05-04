package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.mail.search.FromStringTerm;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CarryPacket
 */
@WebServlet("/CarryPacket")
public class CarryPacket extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CarryPacket() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PreparedStatement statement = null;
		try {
			HttpSession session = request.getSession();
			BaseConnection baseConnection = new BaseConnection();
			Connection connection = baseConnection.DataSource();
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String airlines = request.getParameter("airlines");
			String flightNumber = request.getParameter("flightnumber");
			String packetWeight = request.getParameter("packetWeight");
			String fromCountry = request.getParameter("country2");
			String fromState = request.getParameter("state2");
			String toCountry = request.getParameter("country3");
			String toState = request.getParameter("state3");
			String startDate = request.getParameter("startDate");
			
			flightNumber = airlines+flightNumber;
			
			System.out.println("From Country: "+fromCountry);
			
			System.out.println("From State: "+fromState);
			
			System.out.println("To Country: "+toCountry);
			
			System.out.println("to State: "+toState);
			
			/*SimpleDateFormat formatter = new SimpleDateFormat("mmm-dd-yyyy");
			Date BeginDate = formatter.parse(startDate);*/
			
			statement = connection.prepareStatement(CarryPacket.INSERT_CARRY_PACKET_SQL);
			statement.setString(1, name);
			statement.setString(2, email);
			statement.setString(3, flightNumber);
			statement.setString(4, fromCountry);
			statement.setString(5, fromState);
			statement.setString(6, toCountry);
			statement.setString(7, toState);
			statement.setString(8, startDate);
			statement.setString(9, packetWeight);
			int rs = statement.executeUpdate();

			PrintWriter out = response.getWriter();
			// STEP 5: Extract data from result set
			if (rs != 0) {
				response.sendRedirect("index.jsp#regdSuccess");
				out.println("Thank you, your response has been successfully recorded.");
			} else {
				out.println("Unfortunately!! Your Response is not recorded. Please try again.");
			}
			// STEP 6: Clean-up environment
			statement.close();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (statement != null)
					statement.close();
			} catch (SQLException se2) {
			}// nothing we can do
		}// end try
		System.out.println("Goodbye!");
	}
	
	private static final String INSERT_CARRY_PACKET_SQL = "insert into carry_packet(carrier_name, carrier_email, carrier_flight_num, from_country, from_state, to_country, to_state, start_date, packet_weight) values(?, ?, ?, ?, ?, ?, ?, ?, ?)";

}
