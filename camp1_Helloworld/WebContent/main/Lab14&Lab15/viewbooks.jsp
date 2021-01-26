<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="camp1_Helloworld.BookDao"%>  
	<jsp:useBean id="b" class="camp1_Helloworld.Book"></jsp:useBean>  
	<jsp:setProperty property="*" name="b"/>  
	<%
	int i=BookDao.update(b); 
	%>

	<h1>책 상세정보 확인하기</h1>  
	<form action="listbook.jsp" method="post" >  <!-- back 버튼을 누르면 다시 list를 보여주기 위한 action page. -->
	<input type="hidden" name="id" value="<%=b.getId()%>"/>
	<table>  
	<tr><td>Title:</td><td><input type="text" name="title" value="<%=b.getTitle() %>"/></td></tr>  
	<tr><td>Author:</td><td>  
	<input type="text" name="author" value="<%=b.getAuthor() %>"/></td></tr>  
	<tr><td>Comment:</td><td><textarea cols="50" rows="5" name="comment"><%=b.getComment() %></textarea></td></tr> 
	<tr><td>FileUrl: <input type='text' name='file' value='<%=b.getFile()%>'/><img src="<%=b.getFile()%>"/></td></tr>    
	<tr><td colspan="2"><input type="button" value="back"/></td></tr>  
	</table>  
	</form>  

</body>
</html>