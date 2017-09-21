package com.bean;

import com.bean.User;
// default package



/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String username;
     private String password;


    // Constructors

    /** default constructor */
    public User() {
    }

	/** minimal constructor */
    public User(Integer id, String username) {
        this.id = id;
        this.username = username;
    }
    
    /** full constructor */
    public User( String username, String password) {
        //this.id = id;
    	super();
        this.username = username;
        this.password = password;
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
   
    public boolean equals(Object obj) {
    	User u = (User) obj;
    	if(u.getId()==this.id)
    		return true;
    	return false;
    }
    
	





}