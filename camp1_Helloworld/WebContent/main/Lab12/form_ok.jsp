<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>simple sign up</title>
</head>
<body>
	<%request.setCharacterEncoding("EUC-KR"); 
	String name = request.getParameter("name"); 
	String password = request.getParameter("password");
	String phone = request.getParameter("phone_num");
	String email = request.getParameter("email");
	%>
	<h4>입력한 데이터는 </h4>
	<%=name +"<br>"+ password +"<br>" + phone + "<br>" + email%>
	
</body>
</html>