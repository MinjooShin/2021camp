<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="camp1_Helloworld.User"></jsp:useBean> 
	<jsp:setProperty property="*" name="user"/>
	
	Record:<br>
	Your Name: <jsp:getProperty property="name" name="user"/><br>
	Your Password: <jsp:getProperty property="password" name="user"/><br>
	Your Email: <jsp:getProperty property="email" name="user"/><br>
	
	Thank you for visiting...!
</body>
</html>