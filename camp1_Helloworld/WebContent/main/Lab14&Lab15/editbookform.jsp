<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="camp1_Helloworld.BookDao,camp1_Helloworld.Book"%>  
  
	<%  
	String id=request.getParameter("id");  
	Book b=BookDao.getRecordById(Integer.parseInt(id));  
	%>  
	  
	<h1>기록 편집하기</h1>  
	<form method="post" action="editbook.jsp">  
	<input type="hidden" name="id" value="<%=b.getId() %>"/>  
	<table>  
	<tr><td>Title:</td><td>  
	<input type="text" name="title" value="<%= b.getTitle()%>"/></td></tr>  
	<tr><td>Author:</td><td>  
	<input type="text" name="author" value="<%= b.getAuthor()%>"/></td></tr>  
	<tr><td>Comment:</td><td>  
	<textarea cols="50" rows="5" name="comment"><%= b.getComment()%></textarea></td></tr>
	<tr><td>File Upload:</td><td>
	<input type="text" name="file" value="<%=b.getFile() %>" /></td></tr>  
	<tr><td colspan="2"><input type="submit" value="Update"/>
	<input type="button" value="Cancel" onclick=" location='listbook.jsp' "/></td></tr>  
	</table>  
	</form>  
  
</body>
</html>