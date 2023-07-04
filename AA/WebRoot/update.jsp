<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script>
  // 合法性检验
   function check()
   { var c_pw1=document.aaa.pwd1.value;
     var c_pw2=document.aaa.pwd2.value;
     if(c_pw1!=c_pw2)
     {alert("两次密码不一致，重新输入"); }
     else
     document.aaa.submit(); }
</script>

<body>
   <form action="updateAction.jsp" method="post" name="aaa">
   <center>
      用 户 名：<input type="text" name="name" value="<%=request.getParameter("name")%>" readonly/><br><br/>
      密 &nbsp;&nbsp; 码：<input type="text" name="pwd" value="<%=request.getParameter("pwd")%>" readonly/><br><br/>
      修改密码：<input type="password" name="pwd1" /><br><br/>
      确认密码：<input type="password" name="pwd2" /><br><br/>
      <input type="button" value="确定"  onclick="check();">
   </center>
   </form>
  </body>
