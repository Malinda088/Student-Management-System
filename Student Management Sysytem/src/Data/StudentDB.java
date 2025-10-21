/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Data;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author malin
 */
public class StudentDB implements IStudent {
    Student student;
    File file = new File("D:\\netbeans Data\\StudentDetails.txt"); //database file path

    @Override
    public boolean insert(Student student) {

        try {
            FileWriter filewrite = new FileWriter(file, true); // "ture"-> no repalce and save nother one
            filewrite.write(student.getFristName() + ":"
                    + student.getLastName() + ":"
                    + student.getGender() + ":"
                    + student.getAge() + ":"
                    + student.getGrade() + "\n"); //"\n"-line brake 
            filewrite.close();
            return true;   // need to return because public "void" convert to "boolean"          
        } catch (IOException ex) {
            Logger.getLogger(StudentDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public ArrayList<Student> view() {
        try {
            Scanner scan = new Scanner(file);   //location for sacn document (git tsble) (database file path page up)
            ArrayList<Student> studentlist=new ArrayList<>();
            while(scan.hasNextLine()){
              String line=scan.nextLine();
              String arr[]=line.split(":"); //data divided simble as like txt    "Jhon:wick:10"
              String firstname=arr[0];
              String lastname=arr[1];
              String gender=arr[2];
              int age=Integer.valueOf(arr[3]);
              int grade=Integer.valueOf(arr[4]);
              student=new Student(firstname, lastname, gender, age, grade);
              studentlist.add(student);
            }
            return studentlist;
        } catch (FileNotFoundException ex) {
            Logger.getLogger(StudentDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void search() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
