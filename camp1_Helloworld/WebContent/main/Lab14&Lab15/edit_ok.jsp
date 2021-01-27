<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="camp1_Helloworld.BookDao"%>  
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="b" class="camp1_Helloworld.Book"></jsp:useBean>  
	<jsp:setProperty property="*" name="b"/>  
	<%  
	BookDao BookDAO = new BookDao();
	int i=BookDao.update(b);  
	response.sendRedirect("listbook.jsp");  
	%> 
</body>
</html>