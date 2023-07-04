<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<% 
 String url="jdbc:mysql://localhost/liangshan";//dl为库名，需要更改
  try{
      Class.forName("org.gjt.mm.mysql.Driver");
      Connection conn=DriverManager.getConnection(url,"root","123456");//创建语句对象   ,用户名root和密码默认为空
      
      Statement stmt=conn.createStatement();
      String sql="select * from dl";  //这里需要更改
      ResultSet rs=stmt.executeQuery(sql);//执行语句
    //这里是一个好地方，开始写代码.......
    while(rs.next()) 
     { 
         out.print("用户名:" + rs.getString("xm")); 
         out.print("  密码:" + rs.getString("pw") + "<br>");        
      } 
    

    //*******   测试数据代码结束  *******
         rs.close();              //关闭记录集对象        
         stmt.close();          //关闭语句对象         
         conn.close();         //关闭连接对象
  }
  catch(ClassNotFoundException e)
       {e.printStackTrace();}
%>
