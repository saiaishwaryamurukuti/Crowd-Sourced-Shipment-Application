package Servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SendPacket
 */
@WebServlet("/SendPacket")
public class SendPacket extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SendPacket() {
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
		try {

			String fromAddr = null;
			String toAddr = null;
			String startDate = null;

			ResultSet resultSet = null;
			HttpSession session = request.getSession();
			
			BaseConnection baseConnection = new BaseConnection();
			Connection connection = baseConnection.DataSource();
			fromAddr = request.getParameter("country");
			toAddr = request.getParameter("country1");
			startDate = request.getParameter("startDate");

			System.out.println("Start Date: "+startDate);
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mmm-dd");
			Date BeginDate = formatter.parse(startDate);
			
			statement = connection.prepareStatement(SendPacket.SELECT_CARRY_PACKET_INFO_SQL);
			statement.setString(1, fromAddr);
			statement.setString(2, toAddr);
			statement.setString(3, BeginDate.toString());
			
			resultSet = statement.executeQuery();

			PrintWriter out = response.getWriter();
			
			if(resultSet.next())
			{
				System.out.println("ResultSet is Not NUll");
			}
			else
			{
				System.out.println("ResultSet is NUll");
			}
			
			// STEP 5: Extract data from result set
			while (resultSet.next()) {

				resultMap.put("from", resultSet.getString("from_address"));
				resultMap.put("to", resultSet.getString("to_address"));
				resultMap.put("start", resultSet.getString("start_date"));

				resultList.add(resultMap);
				// response.sendRedirect("index2.jsp");
			}
			
			for (int i = 0; i < resultList.size(); i++) {
				
				System.out.println("Name: "+resultMap.get("from"));
				System.out.println("Name: "+resultMap.get("to"));
				System.out.println("Name: "+resultMap.get("start"));
				
			}
			
			request.setAttribute("resultList", resultList); // categorylist is
															// an arraylist
															// contains object
															// of class category
			getServletConfig().getServletContext()
					.getRequestDispatcher("/index.jsp")
					.forward(request, response);
			
			//response.sendRedirect("index.html#send");
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

	private static final String SELECT_CARRY_PACKET_INFO_SQL = "select CONCAT(from_country, ', ', from_state) as from_address, CONCAT(to_country, ', ', to_state) as to_address, start_date from carry_packet where from_country = ? and to_country = ? and start_date >= ?";

	private static final String NULL_IND = "null";

	public Map resultMap = new HashMap();

	public List resultList = new ArrayList();
}
