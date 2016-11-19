package dbase;

import java.sql.*;
import java.util.*;
import dbase.category.*;
import classes.articleClass.*;
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
	
        
	public static boolean addArticle(int cid, int uid, String title, String text)
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
	
        public static Integer[] articlesByUser(int userid)
        {
            try{
                Connection con = makeConnection();
                PreparedStatement stmt = con.prepareStatement("SELECT article_id FROM article WHERE user_id=?;");
                stmt.setInt(1,userid);
                ResultSet rs = stmt.executeQuery();
                List<Integer> results = new ArrayList<Integer>();
		while(rs.next())
		{
			results.add(rs.getInt("article_id"));
		}
		Integer arr[] = new Integer[results.size()];
		int i = 0;
		for(Object a : results.toArray())
		{
			arr[i] = (int)a;
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
        
        public static Integer[] articlesByCategory(int cid)
        {
            try{
                Connection con = makeConnection();
                PreparedStatement stmt = con.prepareStatement("SELECT article_id FROM article WHERE category_id=?;");
                stmt.setInt(1,cid);
                ResultSet rs = stmt.executeQuery();
                List<Integer> results = new ArrayList<Integer>();
		while(rs.next())
		{
			results.add(rs.getInt("article_id"));
		}
		Integer arr[] = new Integer[results.size()];
		int i = 0;
		for(Object a : results.toArray())
		{
			arr[i] = (int)a;
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
        
        public static Integer[] allArticles()
        {
            try{
                Connection con = makeConnection();
                PreparedStatement stmt = con.prepareStatement("SELECT article_id FROM article ORDER BY timestamp DESC;");
                ResultSet rs = stmt.executeQuery();
                List<Integer> results = new ArrayList<Integer>();
		while(rs.next())
		{
			results.add(rs.getInt("article_id"));
		}
		Integer arr[] = new Integer[results.size()];
		int i = 0;
		for(Object a : results.toArray())
		{
			arr[i] = (int)a;
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
        
        public static String changeCategory(int aid, int cid)
        {
            try{
                Connection con = makeConnection();
                PreparedStatement stmt = con.prepareStatement("UPDATE article SET category_id=? WHERE article_id=?;");
                stmt.setInt(1,cid);
                stmt.setInt(2,aid);
                stmt.executeUpdate();
                con.close();
                return category.categoryName(cid);
            }
            catch(Exception e)
            {
                e.printStackTrace();
                return null;
            }
        }
        
        public static boolean changeTitle(int aid, String title)
        {
            try{
                Connection con = makeConnection();
                PreparedStatement stmt = con.prepareStatement("UPDATE article SET article_title=? WHERE article_id=?;");
                stmt.setString(1,title);
                stmt.setInt(2,aid);
                stmt.executeUpdate();
                con.close();
                return true;
            }    
            catch(Exception e)
            {
                e.printStackTrace();
                return false;
            }
        }
        
        public static boolean changeText(int aid, String text)
        {
            try
            {
                Connection con = makeConnection();
                PreparedStatement stmt = con.prepareStatement("UPDATE article SET article_text=? WHERE article_id=?;");
                stmt.setString(1,text);
                stmt.setInt(2,aid);
                stmt.executeUpdate();
                con.close();
                return true;
            }
            catch(Exception e)
            {
                e.printStackTrace();
                return false;
            }
        }
        
        public static classes.articleClass articleObj(int aid)
        {
            try{
                classes.articleClass obj = new classes.articleClass(aid);
                Connection con = makeConnection();
                PreparedStatement stmt = con.prepareStatement("SELECT category_id,user_id,article_title,article_text,views,timestamp FROM article WHERE article_id=?");
                stmt.setInt(1,aid);
                ResultSet rs = stmt.executeQuery();
                rs.next();
                obj.setCid(rs.getInt(1));
                obj.setUid(rs.getInt(2));
                obj.setTitle(rs.getString(3));
                obj.setText(rs.getString(4));
                obj.setViews(rs.getInt(5));
                java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
                Timestamp date = rs.getTimestamp(6);
                obj.setDate(sdf.format(date));
                return obj;
            }
            catch(Exception e)
            {
                e.printStackTrace();
                return null;
            }
        }
}
