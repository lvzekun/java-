package com.dao.Impl;

import java.sql.SQLException;
import java.util.List;




import Page.Page;

import com.dao.UserDAO;
import com.bean.User;

import java.util.List;
import java.sql.SQLException;
import org.hibernate.*;

import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {
	
	
	
	// private static final HibernateDaoSupport HibernateSessionFactory = null;


	


	public void delete(Integer id) {
	        // TODO Auto-generated method stub
	        getHibernateTemplate().delete(getHibernateTemplate().get(User.class , id));
	    }
	 
	    public void delete(User user) {
	        // TODO Auto-generated method stub
	        getHibernateTemplate().delete(user);
	    }
	 
	    public List<User> findAll() {
	        // TODO Auto-generated method stub
	    	 return getHibernateTemplate().find("from com.bean.User");

	        
	    }
	  
       
	 
	    public User findUserByNameAndPass(String username, String password) {
	        // TODO Auto-generated method stub
	        System.out.println("验证用户22222222");
	        //delete(1);    //从数据库的test表中，成功删除一条记录
	        //String[] args = {username , password};
	        System.out.println("成功123abc");
	           
	        List ul = getHibernateTemplate().find("from com.bean.User au where au.username = '"+ username+"' and au.password = '"+ password+"'");
	 
	        if (ul.size() == 1)
	        {
	            System.out.println("OK 123abc");
	            return (User)ul.get(0);
	        }
	        return null;
	 
	    }
	 
	    public User get(Integer id) {
	        // TODO Auto-generated method stub
	        return (User)getHibernateTemplate().get(User.class , id);
	    }
	 
	    public void save(User user){
            this.getHibernateTemplate().save(user);
        }

	 
	    public void update(User user) {
	        // TODO Auto-generated method stub
	        getHibernateTemplate().saveOrUpdate(user);
	    }

		public List queryPage(Page page) {
			// TODO Auto-generated method stub
			return null;
		}


	  //分页查询用户
        

}