package com.action;

import com.bean.Admin;
import com.bean.LinkBean;
import com.opensymphony.xwork2.ActionSupport;

public class regAction extends ActionSupport {
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

    public String execute() {
        Admin admin = new Admin();
        admin.setName(name);
        admin.setPwd(pwd);

        LinkBean db = new LinkBean();
        int flag = db.insertAdmin(admin);

        if (flag > 0) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
}
