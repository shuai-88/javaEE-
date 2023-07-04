package com.action;

import com.bean.Admin;
import com.bean.LinkBean;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private String name;
    private String pwd;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
  
	public String execute(){
		Admin a=new Admin();
		a.setName(name);
		a.setPwd(pwd);
		LinkBean db=new LinkBean();
	       if(db.Login(a))
	    	   return SUCCESS;
	       else
	    	   return ERROR;
	}  

}
