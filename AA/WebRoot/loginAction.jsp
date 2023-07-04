<%@ page language="java" import="java.util.*,com.bean.*" pageEncoding="utf-8"%>

<body>
  <jsp:useBean id="a" class="com.bean.Admin" scope="session"></jsp:useBean>
  <jsp:setProperty name="a" property="*"/>
  
  <%
    a.setName(request.getParameter("name"));
    a.setPwd(request.getParameter("pwd"));
    
    LinkBean db=new LinkBean();
       if(db.Login(a)){
        out.print("恭喜你 ！"+a.getName()+"用户登陆成功！");
        out.print("三秒后跳到主页面");
        response.setHeader("refresh", "3;url=show.jsp");
//或者等价于
//            response.sendRedirect("wait.jsp?un="+a.getName());
      }else{
       
%><h2>用户名或密码错误，单击<a href="login.jsp">此处</a>重新登录！</h2>
<%}%>
</body>
