package Servlets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class BaseConnection {
	
	public Connection DataSource()
	{
		// TODO Auto-generated method stub
		
				// JDBC driver name and database URL
						final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
					    final String DB_URL = "jdbc:mysql://localhost/shipiteasy";

						// Database credentials
						final String USER = "root";
						final String PASS = "admin";

						Connection conn = null;
						PreparedStatement stmt = null;
						try {
							// STEP 2: Register JDBC driver
							Class.forName(JDBC_DRIVER);

							// STEP 3: Open a connection
							System.out.println("Connecting to database...");
							conn = DriverManager.getConnection(DB_URL, USER, PASS);
						}
						catch (SQLException se) {
							// Handle errors for JDBC
							se.printStackTrace();
						} catch (Exception e) {
							// Handle errors for Class.forName
							e.printStackTrace();
						}
						return conn;
	}
	}
