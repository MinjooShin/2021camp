<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<jsp:useBean id="obj" class="camp1_Helloworld.Calculator"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		
	Today is:<%= new Date() %>	
	<br><br>
	<% int width=5; int height=10;
		out.print("triangle area is "+obj.triangle_area(width, height));
	%>
	
</body>
</html>