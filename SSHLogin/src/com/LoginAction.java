package com;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import Page.Page;

import com.bean.User;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ActionManager;

import com.dao.UserDAO;
import com.dao.Impl.UserDAOImpl;


public class LoginAction extends ActionSupport{
	private static final long serialVersionUID = 1L;

	private User user;//鐢ㄦ埛瀹炰綋
	
	
	 
    private ActionManager mgr;     //璇ュ璞￠噰鐢�Spring 渚濊禆娉ㄥ叆
    private int id;
    
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String username;
    private String password;

	//private Object userDAO;
 
    public String login() throws Exception {
        System.out.println("鐐瑰嚮鐧诲綍鎵ц璇ユ柟娉�23");
        if(username.equals("") || username == null){
            return "FAILURE";
        }
       
        Integer userId = mgr.validLogin(username, password);
       
        if (userId != null) {
            System.out.println("鍚堟硶鐢ㄦ埛");
            return "SUCCESS";
        } else {
           // addActionError("鐢ㄦ埛鍚�瀵嗙爜涓嶅尮閰�);
            System.out.println("闈炴硶鐢ㄦ埛");
            return "FAILURE";
        }
    }
   public String regist() throws Exception {
    	{
    		
    	//System.out.print("11");
	    	User user=new User();
	    	//user.setId(id);
            user.setUsername(username);
            user.setPassword(password);
           
            if (mgr.addUser(user))
                return "SUCCESS";
            else
                return ERROR;
    	
    		
    	}
    }
   //鏌ヨ鎵�湁
   public String listAllUser() throws Exception{
	   List<User> allUserList=mgr.queryAllUser();
	   ServletActionContext.getRequest().setAttribute("allUserList", allUserList);
	   //杩斿洖璇锋眰allUserList缁橪istAllUser.jsp
       return "SUCCESS";

   }
   
   public String showPageUser() throws Exception{
	   page.setPageIndex(pageIndex);
       List onePage=mgr.queryPageUser(page);
       ServletActionContext.getRequest().setAttribute("page",page);
       ServletActionContext.getRequest().setAttribute("onePage",onePage);
       return "SUCCESS";
 

   }
   private int pageIndex=0;
   private Page page;
   public void setPageIndex(int pageIndex){this.pageIndex=pageIndex;}
   public void setPage(Page page){this.page=page;}
   
    public String getPassword() {
        return password;
    }
 
    public String getUsername() {
        return username;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
 
    public void setUsername(String username) {
        this.username = username;
    }
   
    //Spring渚濊禆娉ㄥ叆鐨勫璞″繀椤绘湁get銆乻et鏂规硶銆傛柟娉曞懡鍚嶈鍒欙細get+鍙橀噺鍚嶃�涓轰簡渚夸簬璁板繂锛屽彉閲忓悕绗竴涓瓧姣嶅彲浠ュぇ鍐欍�
    public void setMgr(ActionManager mgr)   
    {
        this.mgr = mgr;
    }
    public ActionManager getmgr()
    {
        return mgr;
    }
}
