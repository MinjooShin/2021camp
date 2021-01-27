<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="camp1_Helloworld.BookDao"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String seq = request.getParameter("id");
		if (seq != "") {
			int id = Integer.parseInt(seq);
			BookDao BookDAO = new BookDao();
			BookDAO.delete(id);
		}
		response.sendRedirect("listbook.jsp");
	%>

</body>
</html>