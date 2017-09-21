package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import com.bean.User4;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

import com.service.impl.SubjectCodeService;

public class SubjectCodeAction extends ActionSupport implements RequestAware {
	private SubjectCodeService subjectCodeService;

	public SubjectCodeService getSubjectCodeService() {
		return subjectCodeService;
	}

	public void setSubjectCodeService(SubjectCodeService subjectCodeService) {
		this.subjectCodeService = subjectCodeService;
	}
    private String code;
	
	public void setCode(String code) {
		this.code = code;
	}
	public String list2() throws IOException{
//		System.out.println("list2:code::"+code);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		List<User4> list2 = subjectCodeService.list(code, 2);
		
		Gson gson = new Gson();
		String json = gson.toJson(list2);
		 out.print(json);
		return null;
	}

	private Map<String, Object> request;
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request = arg0;
	}
}
