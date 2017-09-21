package com.dao;
import java.util.List;
import com.bean.User4;
public class SubDAO extends BaseDAO{
	
	@SuppressWarnings("unchecked")
	public List<User4> list(String code){
		
		String hql = "FROM XueKe sub where sub.code like '" + code + "'";
		return getSession().createQuery(hql).list();
	}
	
}
