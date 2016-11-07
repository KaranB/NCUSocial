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
/**
 *
 * @author dbhrockzz
 */
public class userClass {
    
    int uid;
    String name;
    //String password;
    String email;
    
    public userClass(String email)
    {
        try{
            int uid = user.getID(email);
            String name = user.getName(email);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    
}
