<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
      function check(){
        var pwd = document.form1.pwd.value;
        var pwd1 = document.form1.pwd1.value;
        //alert(pwd+" "+pwd1);
         if(pwd!=pwd1){
             alert("两次密码不一致！！");
             document.form1.pwd.value="";
             document.form1.pwd1.value="";
         }
         else
              document.form1.submit();
      }
</script>
  <body>
  <h1>
    <form name="form1" action="regAction.action" method="post">
    <table>
     <tr><td> 用户名：</td><td><input type="text" name="name"/></td></tr>
     <tr><td>  密  码：</td><td><input type="password" name="pwd"/></td></tr>
      <tr><td>确认密码：</td><td><input type="password" name="pwd1"/></td></tr>
      <tr><td></td><td><input type="button" value="提交" onclick="check()"/></td></tr>
    </table>
    </form>
       </h1>
  </body>
