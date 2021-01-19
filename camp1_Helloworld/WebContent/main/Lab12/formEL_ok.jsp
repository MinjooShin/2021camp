<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>simple sign up</title>
</head>
<body>
	<%request.setCharacterEncoding("EUC-KR"); %>
	안녕하세요. ${ param.name } 님!
	
	당신의 정보:
	<br>
	${ param.password } <br>
	${ param.phone_num } <br>
	${ param.email } 
</body>
</html>