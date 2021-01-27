<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page import="camp1_Helloworld.BookDao, camp1_Helloworld.Book, java.util.* "%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String seq = request.getParameter("id");
	int id = Integer.parseInt(seq);
	BookDao BookDAO = new BookDao();
	Book b = BookDAO.view(id);
	%>
	
	<h1>Detail</h1>  
	<table>  
	<tr><td>Title:</td><td><%=b.getTitle() %></td></tr>  
	<tr><td>Author:</td><td><%=b.getAuthor() %></td></tr>  
	<tr><td>Comment:</td><td><a><%=b.getComment() %></a></td></tr> 
	<tr><td>File Upload:</td><td>  
	<img src="${pageContext.request.contextPath }/upload/<%=b.getImage()%>" style="width:200px;height:200px;">
	<tr><td colspan="2"><a href="editbookform.jsp?id=<%=b.getSeq()%>">Edit</a></td>
	<td><input type="button" value="Cancel" onclick="history.back()" /></td></tr>  
	</table>   

</body>
</html>