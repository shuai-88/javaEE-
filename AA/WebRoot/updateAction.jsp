<%@ page language="java" import="java.util.*,com.bean.*" pageEncoding="UTF-8"%>
 <body>
  <jsp:useBean id="c" class="com.bean.Admin" scope="session"></jsp:useBean>

  <%String name=request.getParameter("name");
    String pwd=request.getParameter("pwd1");
    LinkBean db=new LinkBean();
      int flag=db.updateAdmin(name, pwd);
      if (flag>0)  
      {
        out.print("恭喜!"+name+"修改成功.");
        out.print("<a href=show.jsp>点击返回主页面</a>");
      }
      else
      {out.print("恭喜!"+name+"修改失败.");
       out.print("<a href=show.jsp>点击返回</a>");
      }
%>
</body>
