<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("EUC-KR"); 
	String fname = request.getParameter("fname"); 
	String lname = request.getParameter("lname");
	%>
	<h4>�Է��� �����ʹ� </h4>
	<%=fname +", "+ lname%>
	
</body>
</html>