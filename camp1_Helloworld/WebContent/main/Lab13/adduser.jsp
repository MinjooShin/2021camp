<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="camp1_Helloworld.UserDao"%>  
<jsp:useBean id="u" class="camp1_Helloworld.User2"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%  
	int i=UserDao.save(u);  
	if(i>0){  
	response.sendRedirect("adduser-success.jsp");  
	}else{  
	response.sendRedirect("adduser-error.jsp");  
	}  
	%> 
</body>
</html>