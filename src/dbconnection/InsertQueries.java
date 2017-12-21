package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class InsertQueries {

	private Connection con = null;

	public InsertQueries() {
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

	public void insert_into(String s) throws ClassNotFoundException, SQLException {
		
		Statement stmt = con.createStatement();
		stmt.executeUpdate(s);
	}

}
