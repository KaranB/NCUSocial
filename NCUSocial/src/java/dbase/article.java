package dbase;

import java.sql.*;

public class article {

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
	
	public static boolean addArticle(int cid, int uid, String title, String text) throws ClassNotFoundException,SQLException
	{
		Connection con = makeConnection();
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
	
	public static boolean delArticle(int id) throws ClassNotFoundException,SQLException
	{
		Connection con = makeConnection();
		PreparedStatement stmt = con.prepareStatement("DELETE FROM article WHERE article_id=?;");
		stmt.setInt(1,id);
		stmt.execute();
		System.out.println("Article Deleted Successfully");
		con.close();
		return true;
	}
	
	public static boolean updateArticle(int aid, int cid, String title, String text) throws ClassNotFoundException,SQLException
	{
		Connection con = makeConnection();
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
	
}
