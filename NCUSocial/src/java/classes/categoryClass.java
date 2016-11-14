/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;
import dbase.category;
/**
 *
 * @author dbhrockzz
 */
public class categoryClass {
    
    private int id;
    private String name;

    public categoryClass(int cid)
    {
        this.id = cid;
    }
    
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;  
    }
    
    
}
