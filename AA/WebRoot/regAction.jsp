<%@ page language="java" import="java.util.*,com.bean.*" pageEncoding="UTF-8"%>
<body>
  <jsp:useBean id="c" class="com.bean.Admin" scope="session"></jsp:useBean>

  <%
      c.setName(request.getParameter("name"));
      c.setPwd(request.getParameter("pwd"));
      
      LinkBean db=new LinkBean();
      int flag=db.insertAdmin(c);
      if (flag>0) {
      session.setAttribute("name", c.getName());
%>
     <h2>用户注册成功，单击<a href="login.jsp">此处</a>转到首页</h2>
<%
} else {%>
<h2>用户注册失败，请重新注册！</h2>
<%} %>
  </body>
