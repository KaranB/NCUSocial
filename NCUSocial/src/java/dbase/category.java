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
	
	public static Connection makeConnection()
	{
		try{
                    Class.forName(dbClassName);
                    Connection con = DriverManager.getConnection(CONNECTION,config.dbusername,config.dbpass);
                    System.out.println("Connected to Database");
                    return con;
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                    return null;
                }
	}
	
	public static boolean addCategory(String category_name) throws ClassNotFoundException,SQLException
	{
            try
            {
                Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("INSERT INTO category(category_name) VALUES(?);");
		stmt.setString(1,category_name);
		stmt.execute();
		System.out.println("Category Added Successfully");
		con.close();
		return true;
            }
            catch(Exception e)
            {
                e.printStackTrace();
                return false;
            }
	}
	
	public static boolean delCategory(String category_name) throws ClassNotFoundException, SQLException
	{
            try
            {
                Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("DELETE FROM category WHERE category_name=?");
		stmt.setString(1,category_name);
		stmt.execute();
		System.out.println("Category Deleted Successfully");
		con.close();
		return true;
            }
            catch(Exception e)
            {
                e.printStackTrace();
                return false;
            }
	}
	
	public static String[] categories() throws ClassNotFoundException,SQLException
	{
            try
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
            catch(Exception e)
            {
                e.printStackTrace();
                return null;
            }
	}
        
        public static String categoryName(int cid)
        {
            try{
                Connection con = makeConnection();
                PreparedStatement stmt = con.prepareStatement("SELECT category_name FROM category WHERE category_id=?;");
                stmt.setInt(1,cid);
                ResultSet rs = stmt.executeQuery();
                String name = rs.getString("category_name");
                if(name==null)
                {
                    return null;
                }
                return name;
            }
            catch(Exception e)
            {
                e.printStackTrace();
                return null;
            }
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
