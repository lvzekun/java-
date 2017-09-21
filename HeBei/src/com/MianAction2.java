package com;


import com.bean.User3;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ActionManager;

public class MianAction2 extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	public String table2() throws  Exception {
		
		  User3 user3=new User3();
		  user3.setId(id);
		  user3.setTAllmoney(TAllmoney);
		  user3.setTDanwei(TDanwei);
		  user3.setTIntroduction1(TIntroduction1);
		  user3.setTIntroduction2(TIntroduction2);
		  user3.setTIntroduction3(TIntroduction3);
		  user3.setTKey0(TKey0);
		  user3.setTKey1(TKey1);
		  user3.setTKey2(TKey2);
		  user3.setTKey4(TKey4);
		  user3.setTKey3(TKey3);
		  user3.setTList(TList);
		  user3.setTList2(TList2);
		  user3.setTList3(TList3);
		  user3.setTName(TName);
		  user3.setTQtjsms(TQtjsms);
		  user3.setTQtjsms2(TQtjsms2);
		  user3.setTQtjsms3(TQtjsms3);
		  user3.setTTime1(TTime1);
		  user3.setTTime2(TTime2);
		  user3.setTTypeYf(TTypeYf);
		  user3.setTXqjsssly(TXqjsssly);
		  user3.setTType2(TType2);
		
		 if (dao2.addUser3(user3))
	          return "SUCCESS";
	      else
	          return "ERROR";
		
		
		
	}
	private ActionManager dao2;
	

	public ActionManager getDao2() {
		return dao2;
	}
	public void setDao2(ActionManager dao2) {
		this.dao2 = dao2;
	}

	 private Integer id;
     private String TName;
     private String TTime1;
     private String TTime2;
     private String TIntroduction1;
     private String TIntroduction2;
     private String TIntroduction3;
     private String TKey0;
     private String TKey1;
     private String TKey2;
     private String TKey3;
     private String TKey4;
     private String TAllmoney;
     private String TTypeYf;
     private String TDanwei;
     private String TType2;
     private String TList;
     private String TList2;
     private String TList3;
     private String TXqjsssly;
     private String TQtjsms;
     private String TQtjsms2;
     private String TQtjsms3;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTName() {
		return TName;
	}
	public void setTName(String tName) {
		TName = tName;
	}
	public String getTTime1() {
		return TTime1;
	}
	public void setTTime1(String tTime1) {
		TTime1 = tTime1;
	}
	public String getTTime2() {
		return TTime2;
	}
	public void setTTime2(String tTime2) {
		TTime2 = tTime2;
	}
	public String getTIntroduction1() {
		return TIntroduction1;
	}
	public void setTIntroduction1(String tIntroduction1) {
		TIntroduction1 = tIntroduction1;
	}
	public String getTIntroduction2() {
		return TIntroduction2;
	}
	public void setTIntroduction2(String tIntroduction2) {
		TIntroduction2 = tIntroduction2;
	}
	public String getTIntroduction3() {
		return TIntroduction3;
	}
	public void setTIntroduction3(String tIntroduction3) {
		TIntroduction3 = tIntroduction3;
	}
	public String getTKey0() {
		return TKey0;
	}
	public void setTKey0(String tKey0) {
		TKey0 = tKey0;
	}
	public String getTKey1() {
		return TKey1;
	}
	public void setTKey1(String tKey1) {
		TKey1 = tKey1;
	}
	public String getTKey2() {
		return TKey2;
	}
	public void setTKey2(String tKey2) {
		TKey2 = tKey2;
	}
	public String getTKey3() {
		return TKey3;
	}
	public void setTKey3(String tKey3) {
		TKey3 = tKey3;
	}
	public String getTKey4() {
		return TKey4;
	}
	public void setTKey4(String tKey4) {
		TKey4 = tKey4;
	}
	public String getTAllmoney() {
		return TAllmoney;
	}
	public void setTAllmoney(String tAllmoney) {
		TAllmoney = tAllmoney;
	}
	public String getTTypeYf() {
		return TTypeYf;
	}
	public void setTTypeYf(String tTypeYf) {
		TTypeYf = tTypeYf;
	}
	public String getTDanwei() {
		return TDanwei;
	}
	public void setTDanwei(String tDanwei) {
		TDanwei = tDanwei;
	}
	public String getTType2() {
		return TType2;
	}
	public void setTType2(String tType2) {
		TType2 = tType2;
	}
	public String getTList() {
		return TList;
	}
	public void setTList(String tList) {
		TList = tList;
	}
	public String getTList2() {
		return TList2;
	}
	public void setTList2(String tList2) {
		TList2 = tList2;
	}
	public String getTList3() {
		return TList3;
	}
	public void setTList3(String tList3) {
		TList3 = tList3;
	}
	public String getTXqjsssly() {
		return TXqjsssly;
	}
	public void setTXqjsssly(String tXqjsssly) {
		TXqjsssly = tXqjsssly;
	}
	public String getTQtjsms() {
		return TQtjsms;
	}
	public void setTQtjsms(String tQtjsms) {
		TQtjsms = tQtjsms;
	}
	public String getTQtjsms2() {
		return TQtjsms2;
	}
	public void setTQtjsms2(String tQtjsms2) {
		TQtjsms2 = tQtjsms2;
	}
	public String getTQtjsms3() {
		return TQtjsms3;
	}
	public void setTQtjsms3(String tQtjsms3) {
		TQtjsms3 = tQtjsms3;
	}

}
