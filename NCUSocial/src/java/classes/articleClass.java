/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;
import dbase.article;
import java.util.*;
import dbase.category;
import dbase.user.*;
/**
 *
 * @author dbhrockzz
 */
public class articleClass {
    private int aid;
    private int uid;
    private int cid;
    private String title;
    private String text;
    private String cname;
    private userClass publisher;
    
    public articleClass(int aid)
    {
        try{
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    public int getAid() {
        return aid;
    }

    public int getUid() {
        return uid;
    }

    public int getCid() {
        return cid;
    }

    public String getTitle() {
        return title;
    }

    public String getText() {
        return text;
    }

    public String getCname() {
        return cname;
    }

    public userClass getPublisher() {
        return publisher;
    }

    public void setCid(int cid) {
        String temp = article.changeCategory(aid,cid);
        if(temp==null)
        {
            System.out.println("Not able to change Category");
        }
        else
        {   
            this.cid = cid;
            this.cname = temp;
        }
    }

    public void setTitle(String title) {
        if(article.changeTitle(aid, title))
        {
            this.title = title;
        }
        else
        {
            System.out.println("Not able to Change title");
        }
    }

    public void setText(String text) {
        if(article.changeText(aid, text))
        {
            this.text = text;
        }
        else
        {
            System.out.println("Not able to Change Text");
        }
    }

//    public void setPublisher(userClass publisher) {
//        this.publisher = publisher;
//    }
//    
    
}
