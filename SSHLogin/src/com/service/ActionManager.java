package com.service;


import java.util.List;


import Page.Page;

import com.bean.User;
import com.dao.UserDAO;

public interface ActionManager {
	    //Integer validLogin(String username , String password);
	    public UserDAO getUserDAO();
	    public void setUserDAO(UserDAO userDAO);
		//Integer validLogin(String username, String password);
		Integer validLogin(String username, String password);
		//添加用户
        public boolean addUser(User user);
        //查询所有用户
        public List<User> queryAllUser();
        //查询指定页用户
        public List queryPageUser(Page page);



}
