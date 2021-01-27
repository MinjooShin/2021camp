<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="camp1_Helloworld.BookDao,camp1_Helloworld.Book,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Insert title here</title>
<style>
	body{
		margin : 50px;
		text-align : center;
	}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete_ok.jsp?id=' + id; }
</script>
</head>
<body>
	<%  
	BookDao BookDAO = new BookDao();
	List<Book> list = BookDAO.list();
	request.setAttribute("list",list);
	%> 
	
	 <header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand">Minjoo_Shin</a>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="Info.jsp">Info</a>
				</li>
			</ul>
		</nav>
	</header> 
	
<div class="middle">
	<h1>List of Books</h1>  
	
	<table border="1"  width="90%" class="table table-hover">
	<thead>  
	<tr><th>Title</th><th>Author</th><th>Comment</th><th>Regdate</th><th></th><th></th><th class="d-print-none"><a class="btn btn-sm btn-success" href="bookform.jsp">Add</a></th></tr>  
	</thead>
	<tbody>
	<c:forEach items="${list}" var="b">  
	<tr><td>${b.getTitle()}</td><td>${b.getAuthor()}</td><td>${b.getComment()}</td><td>${b.getRegdate()}</td>
	<td><a class="btn btn-sm btn-warning" href="editbookform.jsp?id=${b.getSeq()}">Edit</a></td>  
	<td><a class="btn btn-sm btn-danger" href="javascript:delete_ok('${b.getSeq()}')">Delete</a></td>
	<td><a class="btn btn-sm" href="viewbooks.jsp?id=${b.getSeq()}">More</a></td></tr>  
	</c:forEach>  
	</tbody>
	</table>  
</div>
	  	<footer>
		<br>
		<p>&copy; 2021/1/27 MINJOO_SHIN</p>
	</footer>
</body>
</html>