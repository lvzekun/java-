 package com.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

//import com.bean.User;
import com.bean.User2;
import com.dao.MainDAO;

public class MainDAOImpl  extends HibernateDaoSupport implements MainDAO {

	public User2 get(Integer id) {
		// TODO Auto-generated method stub
		   return (User2)getHibernateTemplate().get(User2.class , id);
	}

	public void save(User2 user) {
		// TODO Auto-generated method stub
		  this.getHibernateTemplate().save(user);
	}

}
