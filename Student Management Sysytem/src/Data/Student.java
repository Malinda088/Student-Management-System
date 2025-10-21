/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Data;

/**
 *
 * @author malin
 */
public class Student {
    private String FristName;
    private String LastName;
    private String Gender;
    private int age;
    private int Grade; // Variables

    public Student(String FristName, String LastName, String Gender, int age, int Grade) {
        this.FristName = FristName;
        this.LastName = LastName;
        this.Gender = Gender;
        this.age = age;
        this.Grade = Grade;  //constrctures
    }
    
    //N capsulations (Like Setter and Getter)
    
    //Using Getter Method
    public String getFristName() {
        return FristName;
    }

    public String getLastName() {
        return LastName;
    }

    public String getGender() {
        return Gender;
    }

    public int getAge() {
        return age;
    }

    public int getGrade() {
        return Grade;
    }
   
    
}
