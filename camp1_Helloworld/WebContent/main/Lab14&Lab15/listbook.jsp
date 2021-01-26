<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="camp1_Helloworld.BookDao,camp1_Helloworld.Book,java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
	  
	<h1>List of Books</h1>  
	<%  
	List<Book> list=BookDao.getAllRecords();  
	request.setAttribute("list",list);  
	%>  
	  
	<table border="1">  
	<tr><th>Id</th><th>Title</th><th>Author</th><th>Comment</th><th></th><th><a href="bookform.jsp?id=${b.getId()}">Add</a></th></tr>  
	<c:forEach items="${list}" var="b">  
	<tr><td>${b.getId()}</td><td>${b.getTitle()}</td><td>${b.getAuthor()}</td><td>${b.getComment()}</td>  
	<td><a href="editbookform.jsp?id=${b.getId()}">Edit</a></td>  
	<td><a href="deletebook.jsp?id=${b.getId()}">Delete</a></td>
	<td><a href="viewbooks.jsp?id=${b.getId()}">More</a></td></tr>  
	</c:forEach>  
	</table>  
	  
</body>
</html>