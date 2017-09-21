package com.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import com.bean.User3;
import com.dao.MainDAO2;

public class MainDAOImpl2  extends HibernateDaoSupport implements MainDAO2 {

	public User3 get(Integer id) {
		// TODO Auto-generated method stub
		 return (User3)getHibernateTemplate().get(User3.class , id);
	}

	public void save(User3 user) {
		// TODO Auto-generated method stub
		  this.getHibernateTemplate().save(user);
	}

}
