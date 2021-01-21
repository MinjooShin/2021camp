<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@page import="camp1_Helloworld.UserDao"%>  
	<jsp:useBean id="u" class="camp1_Helloworld.User2"></jsp:useBean>  
	<jsp:setProperty property="*" name="u"/>  
	<%  
	int i=UserDao.update(u);  
	response.sendRedirect("viewusers.jsp");  
	%> 
</body>
</html>