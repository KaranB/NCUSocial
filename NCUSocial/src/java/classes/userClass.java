/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;
import dbase.*;
import dbase.user;
import dbase.login.*;
import dbase.article.*;
import jdk.nashorn.internal.objects.ArrayBufferView;
/**
 *
 * @author dbhrockzz
 */
public class userClass {
    
    private int uid;
    private String name;
    //String password;
    private String email;
    private String[] articles;
    
    public userClass(String email)
    {
        try{
            uid = user.getID(email);
            name = user.getName(email);
            articles = article.articlesByUser(uid);
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    public String getName()
    {
        return name;
    }
    
    public String getEmail()
    {
        return email;
    }
    
    public int getId()
    {
        return uid;
    }
    
    public String[] articles()
    {
        return articles;
    }
    
    public int noOfArticles()
    {
        return articles.length;
    }
    
    public void changeName()
    {
        
    }
    
    public void changePassword()
    {
        
    }
}
