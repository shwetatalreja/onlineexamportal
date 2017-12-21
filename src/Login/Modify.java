package Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Modify {

	private Connection con = null;

	public Modify() throws ClassNotFoundException {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_exam_portal", "root", "1234");
			System.out.println("Created database connection.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	

public ResultSet getResults(String query) {

	ResultSet rs = null;
	try {
		
		
		Statement stmt = con.createStatement();
		rs = stmt.executeQuery(query);
		System.out.println("Query executed successful");
	} catch (Exception e) {
		e.printStackTrace();
	}
	return rs;

}

public void closeConnection(){
	if(con != null){
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

}

	


