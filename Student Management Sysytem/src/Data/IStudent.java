/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Data;

import java.util.ArrayList;

/**
 *
 * @author malin
 */
public interface IStudent {
    public abstract boolean insert(Student student); 
    public abstract ArrayList<Student> view();
    public abstract void search();
    
}
