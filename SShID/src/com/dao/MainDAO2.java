package com.dao;
import java.util.List;
import com.bean.User3;

public interface MainDAO2 {
	/**
     * 根据id查找用户
     * @param id 需要查找的用户id
     */ 
    User3 get(Integer id);
    
    /*根据 name*/
  
    /**
     * 增加用户
     * @param user 需要增加的用户
     */      
   public void save(User3 user);
    
}
