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
	public boolean addUser(String email,String password) throws SQLException, ClassNotFoundException{
		
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("INSERT INTO login(email,password) VALUES(?,?);");
		stmt.setString(1,email);
		stmt.setString(2,password);
		stmt.execute();
		System.out.println("User Added Successfully");
		con.close();
		return true;
	}
	
	public boolean delUser(String email) throws SQLException, ClassNotFoundException
	{
		
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("DELETE FROM login WHERE email=?");
		stmt.setString(1, username);
		stmt.execute();
		System.out.println("User Deleted Successfully");
		con.close();
		return true;
	}
	
	public boolean updateUser(String email,String password) throws SQLException, ClassNotFoundException
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

	public boolean checkCredentials(String email) throws SQLException, ClassNotFoundException
	{
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("SELECT password FROM login WHERE email=?");
		stmt.setString(1, email);
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
