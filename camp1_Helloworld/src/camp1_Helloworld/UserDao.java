package camp1_Helloworld;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import camp1_Helloworld.User2;  

public class UserDao {
	public static Connection getConnection(){  
	    Connection con=null;  //database에 접근하기 위한 connection class생성
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  //클래스의 정보를 로드하여 jsp와 db가 연결되도록 하는 driver를 JVM에 등록함.

	        con=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/minjoo21900394","minjoo_shin","tlstnsdl0313!");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(User2 u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        //statement class -> SQL 구문을 실행하는 역할
	       // PreparedStatement class -> Statement 클래스의 기능 향상
	        PreparedStatement ps=con.prepareStatement(  
	"insert into register(name,password,email,sex,country) values(?,?,?,?,?)");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getPassword());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getSex());  
	        ps.setString(5,u.getCountry());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(User2 u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update register set name=?,password=?,email=?,sex=?,country=? where id=?");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getPassword());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getSex());  
	        ps.setString(5,u.getCountry());  
	        ps.setInt(6,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(User2 u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from register where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<User2> getAllRecords(){  
	    List<User2> list=new ArrayList<User2>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from register");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User2 u=new User2();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setPassword(rs.getString("password"));  
	            u.setEmail(rs.getString("email"));  
	            u.setSex(rs.getString("sex"));  
	            u.setCountry(rs.getString("country"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static User2 getRecordById(int id){  
	    User2 u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from register where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User2();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setPassword(rs.getString("password"));  
	            u.setEmail(rs.getString("email"));  
	            u.setSex(rs.getString("sex"));  
	            u.setCountry(rs.getString("country"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
}
