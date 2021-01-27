<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	  
	<h1>Add Book</h1>  
	<form method="post"  action="addbook.jsp" enctype="multipart/form-data">  
	<table>  
	<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>  
	<tr><td>Author:</td><td><input type="text" name="author"/></td></tr>  
	<tr><td>Comment:</td><td><textarea cols="50" rows="5" name="comment"></textarea></td></tr>
	<tr><td>File Upload:</td><td><input type="file" name="image"/></td></tr>  
	<tr><td colspan="2"><input type="submit" value="Save" /></td></tr>
	<tr><td colspan="2"><input type="button" value="Cancel" onclick=" location='history.back()" /></td></tr>    
	</table>  
	</form>  
 
</body>
</html>