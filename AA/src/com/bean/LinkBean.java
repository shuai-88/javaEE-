package com.bean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LinkBean {
	private Connection conn = null;
    public void connect(){
       try{
           //�������ݿ�studentΪ���ݿ���
    	    Class.forName("org.gjt.mm.mysql.Driver");
            String url="jdbc:mysql://localhost/liangshan";
            String user = "root";
            String pwd = "123456";
            conn = DriverManager.getConnection(url,user,pwd);
          }catch(Exception ex){  
              ex.printStackTrace();
            }
    }
    
    public void closeConn(){
        try{
            if(conn!=null&&!conn.isClosed()){
            	conn.close();
            }
           }catch(Exception ex){  
               ex.printStackTrace();
             } 
    }

    public boolean Login(Admin a){
    	boolean flag=false;
        connect();
        try{
       //��¼��֤
        String sql="select * from dl where xm=?";
        PreparedStatement pars=conn.prepareStatement(sql);
        pars.setString(1,a.getName());
        ResultSet rs=pars.executeQuery();
        if(rs!=null&&rs.next()){
        String p=rs.getString("pw");
         if(a.getPwd().equals(p)){
        	 flag=true;
               }
         else{System.out.println("�������������뷵����������");
        	 }
        }
        else
       	 System.out.print("û�и��û����뷵����������");
        }catch (SQLException e) {
                 e.printStackTrace();
            }
           closeConn();
            return flag;
    }    
 
    
    public ArrayList<Admin> showAdmin(){
    	connect();
    	ArrayList<Admin> list=new ArrayList<Admin>();
    	try{
     //��ʾ�����û���Ϣ
    		 String sql="select * from dl";
    		  PreparedStatement pars=conn.prepareStatement(sql);
    		   ResultSet rs=pars.executeQuery();
    		   while(rs!=null&&rs.next()){
    			Admin b=new Admin();
    			b.setName(rs.getString("xm"));
    			b.setPwd(rs.getString("pw"));
    		    list.add(b);		   
    		   }
    		   closeConn();
    		}catch(Exception e){
    			System.out.println(e);	
    	}
		return list;	
    }
 
    
    public int insertAdmin(Admin c){
    	int flag=0;
        connect();
        String sql="insert into dl(xm,pw) values(?,?)";
        try {
      //����û�
             PreparedStatement ps=conn.prepareStatement(sql);
             ps.setString(1,c.getName());
             ps.setString(2,c.getPwd());
             flag=ps.executeUpdate(); 
             closeConn();
            
        } catch(SQLException e){e.printStackTrace();
        }
        return flag;

    }

    public int delAdmin(String name){
    	connect();
    	int flag=0;
    	try{
      //�����û���ɾ���û���Ϣ
    	  String sql="delete from dl where xm=?";
   		  PreparedStatement past=conn.prepareStatement(sql);
   		  past.setString(1, name);
   		  flag=past.executeUpdate();
   		 closeConn();
   		  }catch(Exception e){
   			System.out.println(e);
       }
		return flag;
    }
    
    public int updateAdmin(String name,String pwd){
    	int flag=0;
    	connect();
    	try
    	{
        //�����û����޸�����
    		 String sql="update dl set pw=? where xm=?";
      		  PreparedStatement past=conn.prepareStatement(sql);
      		  past.setString(1, pwd);
      		  past.setString(2, name);
      		  flag=past.executeUpdate();
      		 closeConn();
    	}catch(Exception e){
    		System.out.println(e);
    		
    	}
		return flag;
    }

    
}



