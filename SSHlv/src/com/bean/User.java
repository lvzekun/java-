package com.bean;
// default package



/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String username;
     private String password;
     private String password2;
     private String name;
     private String phoneman;
     private String idman;
     private String sex;


    // Constructors

    /** default constructor */
    public User() {
    }

    
    /** full constructor */
    public User(Integer id, String username, String password, String password2, String name, String phoneman, String idman, String sex) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.password2 = password2;
        this.name = name;
        this.phoneman = phoneman;
        this.idman = idman;
        this.sex = sex;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword2() {
        return this.password2;
    }
    
    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneman() {
        return this.phoneman;
    }
    
    public void setPhoneman(String phoneman) {
        this.phoneman = phoneman;
    }

    public String getIdman() {
        return this.idman;
    }
    
    public void setIdman(String idman) {
        this.idman = idman;
    }

    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }
   








}