<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="camp1_Helloworld.BookDao"%> 
<%@ page import ="java.io.File" %>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- file upload위한 package import --> 
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
	
	String filename = "";
	int sizeLimit = 15 * 1024 * 1024;
	String realPath = request.getServletContext().getRealPath("upload");
	System.out.println(realPath);
	File dir = new File(realPath);
		if (!dir.exists())
			dir.mkdirs();
	MultipartRequest multpartRequest = null;
	multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
	String title = multpartRequest.getParameter("title");
	String author = multpartRequest.getParameter("author");
	String comment = multpartRequest.getParameter("comment");
	filename = multpartRequest.getFilesystemName("image");

	b.setTitle(title);
	b.setAuthor(author);
	b.setComment(comment);
	b.setImage(filename);
	
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