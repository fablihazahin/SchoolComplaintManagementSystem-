package unitTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class SchoolComplaintFunctions {

	public SchoolComplaintFunctions() {
    	Connection connection = null;
        try {
     
    	  // Load the MySQL JDBC driver
    	 
    	  String driverName = "com.mysql.jdbc.Driver";
    	 
    	  Class.forName(driverName);
    	 
    	 
    	  // Create a connection to the database
    	 
    	  String serverName = "localhost";
    	 
    	  String schema = "cms";
    	 
    	  String url = "jdbc:mysql://" + serverName +  "/" + schema;
    	 
    	  String username = "root";
    	 
    	  String password = "";
    	 
    	  connection = DriverManager.getConnection(url, username, password);
    	 
    	   
    	 
    	  System.out.println("Successfully Connected to the database!");
    	 
    	   
    	    } catch (ClassNotFoundException e) {
    	 
    	  System.out.println("Could not find the database driver " + e.getMessage());
    	    } catch (SQLException e) {
    	 
    	  System.out.println("Could not connect to the database " + e.getMessage());
    	  }
    	 
    	    try {
    	 
    	 

    	 
    	Statement statement = connection.createStatement();
    	 

    	for(int i=0; i<1;i++){
    		ResultSet results = statement.executeQuery("SELECT * FROM users");
    	    while(results.next()) {
    	        String Name = results.getString("name");
    	        System.out.print(i);
    	        System.out.println("Name:"+Name);
    	    }
    	}
    }catch (Exception e){
    	
    }
    }
	

	
    private static String userId[] = {"fzahin.fz@gmail.com"};
    private static String password[] = {"2426"};
    private static String complaintNum[] = {"25", "27", "30"};
    private static String adminId="admin";
    private static String adminPass="9925";
    
    public String loginCheck(String id, String pass) {
        String uid=id;
        String upass=pass;
        String message="fail";
        for (int i = 0; i < SchoolComplaintFunctions.userId.length ; i++) {
            if(SchoolComplaintFunctions.userId[i].equals(uid)) {
                if (SchoolComplaintFunctions.password[i].equals(upass)){
                    message = "pass";
                }else {
                message = "fail";
                }
            }
        }
        return message;
    }

    public String adminLoginCheck(String id, String pass) {
        String uid=id;
        String upass=pass;
        String message="fail";
            if(SchoolComplaintFunctions.adminId.equals(uid) && SchoolComplaintFunctions.adminPass.equals(upass)) {
                    message = "pass";
                }else {
                message = "fail";
            }
        return message;    
    }
    
    public String addComplaintCheck(String complaint) {
        String complaintNo=complaint;
        String message="added";
        for (int i = 0; i < SchoolComplaintFunctions.complaintNum.length ; i++) {
            if(SchoolComplaintFunctions.complaintNum[i].equals(complaintNo)) {
                message = "exists";
            }
        }
        return message;
    }
    
    
}


