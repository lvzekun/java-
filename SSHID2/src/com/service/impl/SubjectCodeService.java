package com.service.impl;

import java.util.List;

import com.dao.SubDAO;
import com.bean.User4;

public class SubjectCodeService {
	
	private SubDAO subjectCodeDao;
	
	public void setSubjectCodeDao(SubDAO subjectCodeDao) {
		this.subjectCodeDao = subjectCodeDao;
	}
	
	public List<User4> list(String code,int i){
		System.out.println(code);
		if(i == 1){
			code = "%%00000";
		}else if(i == 2){
			code = code.substring(0, 2);
			code += "%%%00";
			System.out.println(code);
		}else if(i == 3){
			code = code.substring(0, 5);
			code += "%%";
			
		}
		return subjectCodeDao.list(code);
//		return null;
	}

}
