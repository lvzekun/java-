package com.service;
import com.bean.User;
import com.bean.User2;
import com.bean.User3;
import com.dao.MainDAO2;
import com.dao.UserDAO;
import com.dao.MainDAO;
public interface ActionManager {
	    public Integer validLogin(String username , String password);
	    //public boolean addUser(User user);
        //userdao
	    public UserDAO getUserDAO();
	    public void setUserDAO(UserDAO userDAO);
	    
	    //miandao
	    public MainDAO getMainDAO();
	    public void setMainDAO(MainDAO mainDAO);
	    //maindao2
	    public MainDAO2 getMainDAO2();
	    public void setMainDAO2(MainDAO2 mainDAO2);
		
	    
	    //boolean addUser(User user);
		public boolean addUser(User user);
		//public boolean addUser2(User2 user);

		public boolean addUser2(User2 user);
	
		public boolean addUser3(User3 user); 
}
