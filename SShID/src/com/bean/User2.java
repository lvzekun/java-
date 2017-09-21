package com.bean;
// default package



/**
 * User2 entity. @author MyEclipse Persistence Tools
 */

public class User2  implements java.io.Serializable {


    // Fields    

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


    // Constructors

    /** default constructor */
    public User2() {
    }

	/** minimal constructor */
    public User2(Integer id, String CName, String CAdressT, String CArea, String CAdressE, String CPreson, String CContact, String CTelephone, String CProperty, String CIntroduction) {
        this.id = id;
        this.CName = CName;
        this.CAdressT = CAdressT;
        this.CArea = CArea;
        this.CAdressE = CAdressE;
        this.CPreson = CPreson;
        this.CContact = CContact;
        this.CTelephone = CTelephone;
        this.CProperty = CProperty;
        this.CIntroduction = CIntroduction;
    }
    
    /** full constructor */
    public User2(Integer id, String CName, String CManagement, String CAdressT, String CArea, String CAdressW, String CAdressE, String CPreson, String CCode, String CContact, String CPhone, String CTelephone, String CMail, String CProperty, String CIntroduction) {
        this.id = id;
        this.CName = CName;
        this.CManagement = CManagement;
        this.CAdressT = CAdressT;
        this.CArea = CArea;
        this.CAdressW = CAdressW;
        this.CAdressE = CAdressE;
        this.CPreson = CPreson;
        this.CCode = CCode;
        this.CContact = CContact;
        this.CPhone = CPhone;
        this.CTelephone = CTelephone;
        this.CMail = CMail;
        this.CProperty = CProperty;
        this.CIntroduction = CIntroduction;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getCName() {
        return this.CName;
    }
    
    public void setCName(String CName) {
        this.CName = CName;
    }

    public String getCManagement() {
        return this.CManagement;
    }
    
    public void setCManagement(String CManagement) {
        this.CManagement = CManagement;
    }

    public String getCAdressT() {
        return this.CAdressT;
    }
    
    public void setCAdressT(String CAdressT) {
        this.CAdressT = CAdressT;
    }

    public String getCArea() {
        return this.CArea;
    }
    
    public void setCArea(String CArea) {
        this.CArea = CArea;
    }

    public String getCAdressW() {
        return this.CAdressW;
    }
    
    public void setCAdressW(String CAdressW) {
        this.CAdressW = CAdressW;
    }

    public String getCAdressE() {
        return this.CAdressE;
    }
    
    public void setCAdressE(String CAdressE) {
        this.CAdressE = CAdressE;
    }

    public String getCPreson() {
        return this.CPreson;
    }
    
    public void setCPreson(String CPreson) {
        this.CPreson = CPreson;
    }

    public String getCCode() {
        return this.CCode;
    }
    
    public void setCCode(String CCode) {
        this.CCode = CCode;
    }

    public String getCContact() {
        return this.CContact;
    }
    
    public void setCContact(String CContact) {
        this.CContact = CContact;
    }

    public String getCPhone() {
        return this.CPhone;
    }
    
    public void setCPhone(String CPhone) {
        this.CPhone = CPhone;
    }

    public String getCTelephone() {
        return this.CTelephone;
    }
    
    public void setCTelephone(String CTelephone) {
        this.CTelephone = CTelephone;
    }

    public String getCMail() {
        return this.CMail;
    }
    
    public void setCMail(String CMail) {
        this.CMail = CMail;
    }

    public String getCProperty() {
        return this.CProperty;
    }
    
    public void setCProperty(String CProperty) {
        this.CProperty = CProperty;
    }

    public String getCIntroduction() {
        return this.CIntroduction;
    }
    
    public void setCIntroduction(String CIntroduction) {
        this.CIntroduction = CIntroduction;
    }
   








}