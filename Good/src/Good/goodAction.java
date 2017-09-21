package Good;
import java.util.Map;

//import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class goodAction extends ActionSupport  implements SessionAware {
	private String year;
	private String Allmoney;
	private String test1;
	
	
	
   

	public void setTest1(String test1) {
		this.test1 = test1;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getAllmoney() {
		return Allmoney;
	}

	public void setAllmoney(String allmoney) {
		Allmoney = allmoney;
	}
	

	public String execute() throws Exception {
        System.out.println(test1);
        //Integer userId = mgr.validLogin(username, password);
       
       
		//this.session.put("a[length]", test1);  
        for(int i=0;i<year.length();i++)
        {
        	 System.out.println(test1);
        }
      
        return "SUCCESS";
     }

	  private Map session;  
	  public void setSession(Map session) {  
	      this.session = session;  
	  }  
}
