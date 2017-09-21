package com;


import com.bean.User2;
import com.bean.User3;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ActionManager;

public class MainAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	public String table() throws  Exception {
		 
		 User2 user2=new User2();
	     user2.setId(id);
	     user2.setCAdressE(CAdressE);
	     user2.setCAdressT(CAdressT);
	     user2.setCAdressW(CAdressW);
	     user2.setCArea(CArea);
	     user2.setCCode(CCode);
	     user2.setCContact(CContact);
	     user2.setCIntroduction(CIntroduction);
	     user2.setCMail(CContact);
	     user2.setCManagement(CManagement);
	     user2.setCName(CName);
	     user2.setCPhone(CPhone);
	     user2.setCPreson(CPreson);
	     user2.setCProperty(CProperty);
	     user2.setCTelephone(CTelephone);
	     System.out.println("MainAction");
	     System.out.println(id+CPreson+CTelephone);
	      if (dao.addUser2(user2))
	          return "SUCCESS";
	      else
	          return "ERROR";
	}
	
	
	private ActionManager dao;
	
    public ActionManager getDao() {
		return dao;
	}
	public void setDao(ActionManager dao) {
		this.dao = dao;
	}
	 private User2 user2;//用户实体
	 private Integer id;
     private String CName;
     private String CManagement;
     private String CAdressT;
     private String CArea;
     private String CAdressW;
     private String CAdressE;
     private String CPreson;
     private String CCode;
     private String CContact;
     private String CPhone;
     private String CTelephone;
     private String CMail;
     private String CProperty;
     private String CIntroduction;
	public User2 getUser2() {
		return user2;
	}
	public void setUser2(User2 user2) {
		this.user2 = user2;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCName() {
		return CName;
	}
	public void setCName(String cName) {
		CName = cName;
	}
	public String getCManagement() {
		return CManagement;
	}
	public void setCManagement(String cManagement) {
		CManagement = cManagement;
	}
	public String getCAdressT() {
		return CAdressT;
	}
	public void setCAdressT(String cAdressT) {
		CAdressT = cAdressT;
	}
	public String getCArea() {
		return CArea;
	}
	public void setCArea(String cArea) {
		CArea = cArea;
	}
	public String getCAdressW() {
		return CAdressW;
	}
	public void setCAdressW(String cAdressW) {
		CAdressW = cAdressW;
	}
	public String getCAdressE() {
		return CAdressE;
	}
	public void setCAdressE(String cAdressE) {
		CAdressE = cAdressE;
	}
	public String getCPreson() {
		return CPreson;
	}
	public void setCPreson(String cPreson) {
		CPreson = cPreson;
	}
	public String getCCode() {
		return CCode;
	}
	public void setCCode(String cCode) {
		CCode = cCode;
	}
	public String getCContact() {
		return CContact;
	}
	public void setCContact(String cContact) {
		CContact = cContact;
	}
	public String getCPhone() {
		return CPhone;
	}
	public void setCPhone(String cPhone) {
		CPhone = cPhone;
	}
	public String getCTelephone() {
		return CTelephone;
	}
	public void setCTelephone(String cTelephone) {
		CTelephone = cTelephone;
	}
	public String getCMail() {
		return CMail;
	}
	public void setCMail(String cMail) {
		CMail = cMail;
	}
	public String getCProperty() {
		return CProperty;
	}
	public void setCProperty(String cProperty) {
		CProperty = cProperty;
	}
	public String getCIntroduction() {
		return CIntroduction;
	}
	public void setCIntroduction(String cIntroduction) {
		CIntroduction = cIntroduction;
	}
     
}
