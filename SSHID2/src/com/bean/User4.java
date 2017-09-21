package com.bean;
// default package



/**
 * User4 entity. @author MyEclipse Persistence Tools
 */

public class User4  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String code;
     private String title;


    // Constructors

    /** default constructor */
    public User4() {
    }

    
    /** full constructor */
    public User4(Integer id, String code, String title) {
        this.id = id;
        this.code = code;
        this.title = title;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return this.code;
    }
    
    public void setCode(String code) {
        this.code = code;
    }

    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
   








}