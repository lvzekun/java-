package com.dao;


import com.bean.User2;

public interface MainDAO {
	/**
     * ����id�����û�
     * @param id ��Ҫ���ҵ��û�id
     */ 
    User2 get(Integer id);
    
    /*���� name*/
  
    /**
     * �����û�
     * @param user ��Ҫ���ӵ��û�
     */      
   public void save(User2 user);
    
  
}
