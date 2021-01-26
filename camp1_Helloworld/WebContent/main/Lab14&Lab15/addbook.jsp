<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="camp1_Helloworld.BookDao"%>  
<jsp:useBean id="b" class="camp1_Helloworld.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="b"/>  

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%  
	int i=BookDao.save(b);  
	if(i>0){  
	response.sendRedirect("addbook-success.jsp");  
	}else{  
	response.sendRedirect("addbook-error.jsp");  
	}  
	%> 
</body>
</html>