<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="camp1_Helloworld.BookDao"%>  
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="b" class="camp1_Helloworld.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="b"/>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%  
	BookDao BookDAO = new BookDao();
	int i=BookDAO.save(b);  
	String msg = "add success!";
	if(i==0) msg = "add error!";
	%> 
	
	<script>
		alert('<%=msg%>'); location.href='listbook.jsp';
	</script>
</body>
</html>