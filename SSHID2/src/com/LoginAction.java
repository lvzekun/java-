package com;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.bean.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ActionManager;

public class LoginAction extends ActionSupport  implements SessionAware 

{
	private static final long serialVersionUID = 1L;
	private User user;//用户实体
	
    private ActionManager mgr;     //该对象采用 Spring 依赖注入
   
    private String username;
    private String password;
	
    
	
   public String login() throws  Exception 
   {
	 System.out.println("点击登录执行该方法123");
     if(username.equals("") || username == null){
         return "FAILURE";
     }
    
     Integer userId = mgr.validLogin(username, password);
    
     if (userId != null) {
    	  this.session.put("id", userId);  
    	
         return "SUCCESS";
       
     } 
     else {
         addActionError("用户名/密码不匹配");
         System.out.println("非法用户");
         return "FAILURE";
     }
     
  }
  public String regist() throws Exception{
	  User user=new User();
     //user.setId(id);
      user.setUsername(username);
      user.setPassword(password);
      System.out.println(username+password);
      if (mgr.addUser(user))
          return "SUCCESS";
      else
          return "ERROR";
  } 
  private Map session;  
  public void setSession(Map session) {  
      this.session = session;  
  }  

public ActionManager getMgr() {
	return mgr;
}

public void setMgr(ActionManager mgr) {
	this.mgr = mgr;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

}
