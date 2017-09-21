package com.dao;


import com.bean.User2;

public interface MainDAO {
	/**
     * 根据id查找用户
     * @param id 需要查找的用户id
     */ 
    User2 get(Integer id);
    
    /*根据 name*/
  
    /**
     * 增加用户
     * @param user 需要增加的用户
     */      
   public void save(User2 user);
    
  
}
