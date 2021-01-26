<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="camp1_Helloworld.BookDao"%>  
	<jsp:useBean id="b" class="camp1_Helloworld.Book"></jsp:useBean>  
	<jsp:setProperty property="*" name="b"/>  
	
	<h1>책 삭제하기</h1>  
	<form method="post" action="deletebook2.jsp">  
	<input type="hidden" name="id" value="<%=b.getId() %>"/>  
	<table>  
	<tr><td>Title:</td><td>  
	<input type="text" name="title"  value="<%=b.getTitle() %>"/></td></tr>  
	<tr><td>Author:</td><td>  
	<input type="text" name="author" value="<%=b.getAuthor() %>"/></td></tr>  
	<tr><td>Comment:</td><td>  
	<input type="text" name="comment" value="<%=b.getComment() %>"/></td></tr> 
	<tr><td>FileUrl:</td><td>  
	<input type="text" name="file" value="<%=b.getFile() %>"/></td></tr>  
	<tr><td colspan="2"><input type="submit" value="Delete"></td></tr> 
	<tr><td colspan="2"><button onclick=" location='listbook.jsp' ">Cancel</button></td></tr> 
	</table>  
	</form>  

</body>
</html>