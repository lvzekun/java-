package com.service.impl;


import java.util.List;

import Page.Page;

import com.service.ActionManager;
import com.dao.UserDAO;
import com.bean.User;

public class ActionManagerImpl implements ActionManager {
	 
	    private UserDAO userDAO;
	   
	    public UserDAO getUserDAO() {
	       return this.userDAO;
	    }
	   
	    public void setUserDAO(UserDAO userDAO) {
	       this.userDAO = userDAO;
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
            if (userDAO.get(user.getId())==null)
            {
            	
                userDAO.save(user);
                System.out.println("111");
            }
            else
                return false;
            return true;
        }
        //查询所有用户
        public List<User> queryAllUser(){
            return userDAO.findAll();
        }
        //查询指定页用户
        public List queryPageUser(Page page){
            return userDAO.queryPage(page);
        }




}
