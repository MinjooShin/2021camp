<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="camp1_Helloworld.BookDao,camp1_Helloworld.Book"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
	<%  
	BookDao BookDAO = new BookDao();
	String id=request.getParameter("id");  
	Book b=BookDAO.view(Integer.parseInt(id));  
	%>  
	  
	<h1>Edit</h1>  
	<form method="post" action="edit_ok.jsp" enctype="multipart/form-data">  
	<input type="hidden" name="seq" value="<%=b.getSeq() %>"/>  
	<table>  
	<tr><td>Title:</td><td>  
	<input type="text" name="title" value="<%= b.getTitle()%>"/></td></tr>  
	<tr><td>Author:</td><td>  
	<input type="text" name="author" value="<%= b.getAuthor()%>"/></td></tr>  
	<tr><td>Comment:</td><td>  
	<textarea cols="50" rows="5" name="comment"><%= b.getComment()%></textarea></td></tr>
	<tr><td>File Upload:</td><td>  
	<img src="${pageContext.request.contextPath }/upload/<%=b.getImage()%>" style="width:200px;height:200px;">
	<input type="file" name="image"/></td></tr> 
	<tr><td colspan="2"><input type="submit" value="Update"/>
	<input type="button" value="Cancel" onclick="history.back() "/></td></tr>  
	</table>  
	</form>  
  
</body>
</html>