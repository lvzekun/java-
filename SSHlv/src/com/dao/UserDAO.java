package com.dao;
import java.util.List;
import com.bean.User;

public interface UserDAO {
	/**
     * ����id�����û�
     * @param id ��Ҫ���ҵ��û�id
     */ 
    User get(Integer id);
    /**
     * �����û�
     * @param user ��Ҫ���ӵ��û�
     */      
    void save(User user);
 
    /**
     * �޸��û�
     * @param user ��Ҫ�޸ĵ��û�
     */ 
    void update(User user);
 
    /**
     * ɾ���û�
     * @param id ��Ҫɾ�����û�id
     */ 
    void delete(Integer id);
 
    /**
     * ɾ���û�
     * @param user ��Ҫɾ�����û�
     */ 
    void delete(User user);
 
    /**
     * ��ѯȫ���û�
     * @return ���ȫ���û�
     */
    List<User> findAll();
 
    /**
     * �����û�������������û�
     * @param username ��ѯ������û���
     * @param pass ��ѯ���������
     * @return ��Ӧ���û�
     */
    User findUserByNameAndPass(String username , String password);
 
}
