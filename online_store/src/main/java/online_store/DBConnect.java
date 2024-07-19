package online_store;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	// Define the database connection parameters
	private static String url = "jdbc:mysql://localhost:3306/shop";
	private static String userName = "root";
	private static String password = "Abilasha@2001";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
		}
		catch(Exception e){
			// If an exception occurs during connection, print an error message
			System.out.println("Database connection is not success!");
		}
		
		return con;
		
	}

}
