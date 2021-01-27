package camp1_Helloworld;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import camp1_Helloworld.Book;

public class BookDao {
	
	private final String Save = "insert into book (title, author, comment) values (?,?,?)";
	private final String Update = "update book set title=?, author=?, comment=? where seq=?";
	private final String Delete = "delete from book  where seq=?";
	private final String View = "select * from book  where seq=?";
	private final String List = "select * from book order by regdate desc";
	//
	public static Connection getConnection(){  
	    Connection con=null;  //database에 접근하기 위한 connection class생성
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  //클래스의 정보를 로드하여 jsp와 db가 연결되도록 하는 driver를 JVM에 등록함.

	        con=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/minjoo21900394","minjoo_shin","tlstnsdl0313!");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}
	//
	public int save(Book b){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        //statement class -> SQL 구문을 실행하는 역할
	       // PreparedStatement class -> Statement 클래스의 기능 향상
	        PreparedStatement ps=con.prepareStatement(Save);   //DB에 데이터를 추가하기 위한 코드.
	        ps.setString(1,b.getTitle());  
	        ps.setString(2,b.getAuthor());  
	        ps.setString(3,b.getComment());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public int update(Book b){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(Update);  //DB에 데이터를 업데이트하기 위한 코드.
	        ps.setString(1,b.getTitle());  
	        ps.setString(2,b.getAuthor());  
	        ps.setString(3,b.getComment());  
	        ps.setInt(4,b.getSeq());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public void delete(int b){   
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(Delete);  //DB에 데이터를 삭제하기 위한 코드.
	        ps.setInt(1, b);  
	        ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	} 
	
	public List<Book> list(){  
	    List<Book> list=new ArrayList<Book>();      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(List);   //DB에 있는 모든 데이터를 가져오기 위한 코드.
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Book b=new Book();  
	            b.setSeq(rs.getInt("seq"));  
	            b.setTitle(rs.getString("title"));  
	            b.setAuthor(rs.getString("author"));  
	            b.setComment(rs.getString("comment"));  
	            b.setRegdate(rs.getDate("regdate"));  
	            list.add(b);  
	        }  
	        rs.close();
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public Book view(int seq){  
	    Book b=new Book();  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(View);  //DB에서 특정 아이디를 가진 데이터를 모두 가져오기 위한 코드.
	        ps.setInt(1,seq);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            b=new Book();  
	            b.setSeq(rs.getInt("seq"));  
	            b.setTitle(rs.getString("title"));  
	            b.setAuthor(rs.getString("author"));  
	            b.setComment(rs.getString("comment"));
	            b.setRegdate(rs.getDate("regdate")); 
	        }  
	        rs.close();
	    }catch(Exception e){System.out.println(e);}  
	    return b;  
	}  
}