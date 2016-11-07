package dbase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;
import java.util.*;

public class category {
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
	
	public static boolean addCategory(String category_name) throws ClassNotFoundException,SQLException
	{
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("INSERT INTO category(category_name) VALUES(?);");
		stmt.setString(1,category_name);
		stmt.execute();
		System.out.println("Category Added Successfully");
		con.close();
		return true;
	}
	
	public static boolean delCategory(String category_name) throws ClassNotFoundException, SQLException
	{
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("DELETE FROM category WHERE category_name=?");
		stmt.setString(1,category_name);
		stmt.execute();
		System.out.println("Category Deleted Successfully");
		con.close();
		return true;
	}
	
	public static String[] categories() throws ClassNotFoundException,SQLException
	{
		Connection con = makeConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT category_name from category;");
		List<String> results = new ArrayList<String>();
		while(rs.next())
		{
			results.add(rs.getString("category_name"));
		}
		String arr[] = new String[results.size()];
		int i = 0;
		for(Object a : results.toArray())
		{
			arr[i] = new String((String)a);
			i++;
		}
		return arr;
	}
}
	
//	public static void main(String[] args)
//	{
//		category obj = new category();
//		try{
//			String arr[] = obj.categories();
//			for(String a:arr)
//			{
//				System.out.println(a);
//			}
//		}
//		catch(Exception e)
//		{
//			e.printStackTrace();
//		}
//	}
//
//}
