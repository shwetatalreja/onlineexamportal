package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DropUser {

	private Connection con = null;

	public DropUser() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_exam_portal", "root", "1234");
			System.out.println("Created database connection.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void delete_from(String s) throws ClassNotFoundException, SQLException {
		
		Statement stmt = con.createStatement();
		stmt.executeUpdate(s);
	}

}
	
	
	
	
	

