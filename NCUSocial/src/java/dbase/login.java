package dbase;

import java.sql.*;
import dbase.config;
public class login {
	
	private static final String dbClassName = "com.mysql.jdbc.Driver";
	private static final String CONNECTION =
            "jdbc:mysql://127.0.0.1/ncu_social";
	private String username,password;
        
        public static Connection makeConnection() throws ClassNotFoundException,SQLException
	{
		Class.forName(dbClassName);
		Connection con = DriverManager.getConnection(CONNECTION,config.dbusername,config.dbpass);
		System.out.println("Connected to Database");
		return con;
		
	}
	public static boolean addUser(String email,String password) throws SQLException, ClassNotFoundException{
		
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("INSERT INTO login(email,password) VALUES(?,?);");
		stmt.setString(1,email);
		stmt.setString(2,password);
		stmt.execute();
		System.out.println("User Added Successfully");
		con.close();
		return true;
	}
	
	public static boolean delUser(String email) throws SQLException, ClassNotFoundException
	{
		
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("DELETE FROM login WHERE email=?");
		stmt.setString(1, email);
		stmt.execute();
		System.out.println("User Deleted Successfully");
		con.close();
		return true;
	}
	
	public static boolean updateUser(String email,String password) throws SQLException, ClassNotFoundException
	{
		
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("UPDATE login SET password=? WHERE email=?");
		stmt.setString(1, password);
		stmt.setString(2, email);
		stmt.execute();
		System.out.println("User Updated Successfully");
		con.close();
		return true;
	}

	public static boolean checkCredentials(String email,String pass) throws SQLException, ClassNotFoundException
	{
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("SELECT password FROM login WHERE email=?");
		stmt.setString(1, email);
		ResultSet rs = stmt.executeQuery();
		rs.next();
		if(pass.equals(rs.getString(1))){
			con.close();
			return true;
		}
		con.close();
		return false;
	}
	
//	public static void main(String [] args)
//	{
//		login obj =  new login();
//		try{
//			if(obj.checkCredentials("dbh","hellonow"))
//			{
//				System.out.println("Verified");
//			}
//			else{
//				System.out.println("Rejected");
//			}
//		}
//		catch(Exception e){
//			e.printStackTrace();
//		}
//	}

}
