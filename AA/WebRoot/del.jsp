<%@ page language="java" import="java.util.*,com.bean.*" pageEncoding="UTF-8"%>
<body>
   <%
   String name=request.getParameter("name");
   
   LinkBean db=new LinkBean();
  int a= db.delAdmin(name);
   if(a>0){
   out.println("删除成功,3秒钟返回");
   response.setHeader("refresh","3;url=show.jsp");}
   else{out.println("删除失败");}
    %>
  </body>
