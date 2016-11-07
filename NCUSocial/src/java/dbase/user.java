package dbase;

import java.sql.*;

public class user {
	
	private static final String dbClassName = "com.mysql.jdbc.Driver";
	private static final String CONNECTION =
            "jdbc:mysql://127.0.0.1/ncu_social";
	
	public static Connection makeConnection() throws ClassNotFoundException,SQLException
	{
		Class.forName(dbClassName);
		Connection con = DriverManager.getConnection(CONNECTION,config.dbusername,config.dbpass);
		System.out.println("Connected to Database");
		return con;	
	}
	
	public static boolean addUser(String email, String name) throws ClassNotFoundException,SQLException
	{
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("INSERT INTO user(email,name) VALUES(?,?,?);");
		stmt.setString(1, email);
		stmt.setString(2, name);
		stmt.execute();
		System.out.println("User Added Successfully");
		con.close();
		return true;
	}
	
	public static boolean delUser(String email) throws ClassNotFoundException,SQLException
	{
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("DELETE FROM user WHERE email=?;");
		stmt.setString(1, email);
		stmt.execute();
		System.out.println("User Deleted Successfully");
		con.close();
		return true;
	}
	
	public static int getID(String email) throws SQLException,ClassNotFoundException
	{
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("SELECT user_id FROM user WHERE email=?;");
		stmt.setString(1,email);
		ResultSet rs = stmt.executeQuery();
		int id = rs.getInt("user_id");
		con.close();
		return id;
	}
	
        public static String getName(String email) throws SQLException,ClassNotFoundException
        {
            Connection con = makeConnection();
            PreparedStatement stmt = con.prepareStatement("SELECT name FROM user WHERE email=?;");
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            String temp = rs.getString("name");
            con.close();
            return temp;
        }
//	public boolean updateEmail(String username,String email) throws SQLException,ClassNotFoundException
//	{
//		Connection con = makeConnection();
//		PreparedStatement stmt = con.prepareStatement("UPDATE user SET email=? WHERE username = ?;");
//		stmt.setString(1, email);
//		stmt.setString(2, username);
//		stmt.execute();
//		System.out.println("Email Updated Successfully");
//		con.close();
//		return true;
//	}
	
	public static boolean updateName(String email,String name) throws SQLException,ClassNotFoundException
	{
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("UPDATE user SET name=? WHERE email = ?;");
		stmt.setString(1, name);
		stmt.setString(2, email);
		stmt.execute();
		System.out.println("Name Updated Successfully");
		con.close();
		return true;
	}
	
}
