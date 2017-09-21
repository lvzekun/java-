package com.dao;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class BaseDAO {

	protected SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession(){
		
		return this.sessionFactory.getCurrentSession();
	}
	
	//鍙栧嚭session鐨処D锛�
	protected Integer getSessionID(){
		HttpServletRequest request;
		request = ServletActionContext.getRequest();
		Object IDo = request.getSession().getAttribute("ID");
		Integer ID = Integer.parseInt(String.valueOf(IDo));
		
		return ID;
	}
}
