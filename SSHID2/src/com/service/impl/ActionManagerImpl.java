package com.service.impl;

import com.bean.User;
import com.bean.User2;
import com.bean.User3;
import com.dao.MainDAO;
import com.dao.MainDAO2;
import com.dao.UserDAO;


import com.service.ActionManager;

public class ActionManagerImpl implements ActionManager {

	    private UserDAO userDAO;
	    private MainDAO mainDAO;
	    
	    private MainDAO2 mainDAO2;
	    
	    public MainDAO getMainDAO() {
			// TODO Auto-generated method stub
			return this.mainDAO;
		}

		public void setMainDAO(MainDAO mainDAO) {
			// TODO Auto-generated method stub
			this.mainDAO=mainDAO;
		}
	    public UserDAO getUserDAO() {
	       return this.userDAO;
	    }
	   
	    public void setUserDAO(UserDAO userDAO) {
	       this.userDAO = userDAO;
	    }
	    public MainDAO2 getMainDAO2() {
		// TODO Auto-generated method stub
		   return this.mainDAO2;
	    }

	    public void setMainDAO2(MainDAO2 mainDAO2) 
	      {
		 // TODO Auto-generated method stub
	     	this.mainDAO2=mainDAO2;
	      }

	    

		public Integer validLogin(String username, String password){
	      
	            try {
	                  User user = userDAO.findUserByNameAndPass(username, password);
	                  if (user!= null)
	                  {
	                     return user.getId();
	                  }
	            }
	            catch (Exception e)
	            {
	                   System.out.println(e.getMessage());
	            }
	             return null;
	    }
	   
		//添加用户
        public boolean addUser(User user){
        	 
        /*	if (userDAO.get2(user.getUsername())==null)
            {
            	
                userDAO.save(user);
                System.out.println("111");
            }
            else
            {
            	System.out.println("已由重复名称");
                return false;
            }*/
        	userDAO.save(user);
             System.out.println("111");
            return true;
                    
        }

		public boolean addUser2(User2 user) {
			// TODO Auto-generated method stub
			if (mainDAO.get(user.getId())==null)
                mainDAO.save(user);
             System.out.println("111");
            return true;
		}

		public boolean addUser3(User3 user) {
			// TODO Auto-generated method stub
			if (mainDAO2.get(user.getId())==null)
                mainDAO2.save(user);
             System.out.println("111");
            return true;
			//return false;
		}

		
		

		
		
			

		

		

		

		

}
