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
	<%  
	int i=BookDao.update(b);  
	response.sendRedirect("listbook.jsp");  
	%> 
</body>
</html>