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
	�ȳ��ϼ���. ${ param.name } ��!
	
	����� ����:
	<br>
	${ param.password } <br>
	${ param.phone_num } <br>
	${ param.email } 
</body>
</html>