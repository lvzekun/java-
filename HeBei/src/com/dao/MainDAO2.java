package com.dao;
import java.util.List;
import com.bean.User3;

public interface MainDAO2 {
	/**
     * ����id�����û�
     * @param id ��Ҫ���ҵ��û�id
     */ 
    User3 get(Integer id);
    
    /*���� name*/
  
    /**
     * �����û�
     * @param user ��Ҫ���ӵ��û�
     */      
   public void save(User3 user);
    
}
