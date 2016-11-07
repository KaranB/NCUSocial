package dbase;

import java.sql.*;
import java.util.*;

public class article {

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
	
	public static boolean addArticle(int cid, int uid, String title, String text) throws ClassNotFoundException,SQLException
	{
		Connection con = makeConnection();
                if(con==null)
                {
                    return false;
                }
                else
                {
                    try
                    {
                        PreparedStatement stmt = con.prepareStatement("INSERT INTO article(category_id,user_id,article_title,article_text,views) VALUES(?,?,?,?,0);");
                        stmt.setInt(1,cid);
                        stmt.setInt(2, uid);
                        stmt.setString(3, title);
                        stmt.setString(4, text);
                        stmt.execute();
                        System.out.println("Article Added Successfully");
                        con.close();
                        return true;
                    }
                    catch(Exception e)
                    {
                        e.printStackTrace();
                        return false;
                    }
                }
	}
	
	public static boolean delArticle(int id) throws ClassNotFoundException,SQLException
	{
		Connection con = makeConnection();
                if(con==null)
                {
                    return false;
                }
                else
                {
                    try
                    {
                        PreparedStatement stmt = con.prepareStatement("DELETE FROM article WHERE article_id=?;");
                        stmt.setInt(1,id);
                        stmt.execute();
                        System.out.println("Article Deleted Successfully");
                        con.close();
                        return true;
                    }
                    catch(Exception e)
                    {
                        e.printStackTrace();
                        return false;
                    }
                }
	}
	
	public static boolean updateArticle(int aid, int cid, String title, String text) throws ClassNotFoundException,SQLException
	{
		Connection con = makeConnection();
                if(con==null)
                {
                    return false;
                }
                else
                {
                    try
                    {
                        PreparedStatement stmt = con.prepareStatement("UPDATE article SET category_id=?,article_title=?,article_text=? WHERE article_id=?");
                        stmt.setInt(1,cid);
                        stmt.setString(2, title);
                        stmt.setString(3, text);
                        stmt.setInt(4, aid);
                        stmt.execute();
                        System.out.println("Article Updated Successfully");
                        con.close();
                        return true;
                    }
                    catch(Exception e)
                    {
                        e.printStackTrace();
                        return false;
                    }
                }
                    
	}
	
        public static String[] articlesByUser(int userid)
        {
            try{
                Connection con = makeConnection();
                PreparedStatement stmt = con.prepareStatement("SELECT article_id FROM article WHERE user_id=?;");
                stmt.setInt(1,userid);
                ResultSet rs = stmt.executeQuery();
                List<String> results = new ArrayList<String>();
		while(rs.next())
		{
			results.add(rs.getString("article_id"));
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
}
