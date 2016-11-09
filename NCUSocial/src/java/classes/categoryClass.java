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

    public void categoryClass(int cid)
    {
        this.id = cid;
        this.name = category.categoryName(cid);
    }
    
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        if(category.changeName(id, name))
        {
            this.name = name;
        }
        else
        {
            System.out.println("Unable to Change Category Name");
        }  
    }
    
    
}
