<%@ page language="java" import="java.util.*,com.bean.*" pageEncoding="utf-8"%>
<jsp:useBean id="db" class="com.bean.LinkBean" scope="session"></jsp:useBean>

<table border=1>
<tr><th>用户名</th><th>密码</th><th>操作</th></tr>
<%
ArrayList<Admin> list = db.showAdmin();
for (int i = 0; i < list.size(); i++) {
Admin b = list.get(i);
%>
  <tr>
     <td><%=b.getName()%></td>
     <td><%=b.getPwd()%></td>
     <td><a href="del.jsp?name=<%=b.getName()%>">删除</a> <a href="update.jsp?name=<%=b.getName()%>&pwd=<%=b.getPwd() %>">修改</a></td>
  </tr>
<%}%>
</table>
</body>
