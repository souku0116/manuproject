package logintracker;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DatabaseOperations {

	private static final String url = "jdbc:postgresql://localhost/postgres";
    private static final String user = "postgres";
    private static final String password = "root";
    private static Connection connection;
    
    private static Connection getConnection() {
    	try {
    		Class.forName("org.postgresql.Driver");
    		connection = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			System.out.println("Error in abcde connection "+e);
		}
    	return connection;
    }
    public static User checkLogin(String email, String password) {
        User user = null;
        try {
            Connection connection = getConnection();
            String query = "SELECT username, email, designation FROM logintrackerusers WHERE email=? AND password=?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {  // User is found
                String username = rs.getString("username");
                String designation = rs.getString("designation");
                user = new User(username, email, designation);  // Create a User object to store the details
            }
        } catch (Exception e) {
            System.out.println("Error in checking login: " + e);
        }
        return user;
    }
    
	
}
