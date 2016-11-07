package dbase;

import java.sql.*;
public class login {
	
	private static final String dbClassName = "com.mysql.jdbc.Driver";
	private static final String CONNECTION =
            "jdbc:mysql://127.0.0.1/ncu_social";
	private String username,password;
        
        public login(String uname, String pass)
        {
            username = new String(uname);
            password = new String(pass);
        }
        
	public Connection makeConnection() throws ClassNotFoundException,SQLException
	{
		Class.forName(dbClassName);
		Connection con = DriverManager.getConnection(CONNECTION,"root","dbhrockzz");
		System.out.println("Connected to Database");
		return con;
		
	}
	public boolean addUser(String username,String password) throws SQLException, ClassNotFoundException{
		
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("INSERT INTO login(username,password) VALUES(?,?);");
		stmt.setString(1, username);
		stmt.setString(2,password);
		stmt.execute();
		System.out.println("User Added Successfully");
		con.close();
		return true;
	}
	
	public boolean delUser(String username) throws SQLException, ClassNotFoundException
	{
		
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("DELETE FROM login WHERE username=?");
		stmt.setString(1, username);
		stmt.execute();
		System.out.println("User Deleted Successfully");
		con.close();
		return true;
	}
	
	public boolean updateUser(String username,String password) throws SQLException, ClassNotFoundException
	{
		
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("UPDATE login SET password=? WHERE username=?");
		stmt.setString(1, password);
		stmt.setString(2, username);
		stmt.execute();
		System.out.println("User Updated Successfully");
		con.close();
		return true;
	}

	public boolean checkCredentials() throws SQLException, ClassNotFoundException
	{
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("SELECT password FROM login WHERE username=?");
		stmt.setString(1, username);
		ResultSet rs = stmt.executeQuery();
		rs.next();
		if(password.equals(rs.getString(1))){
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
