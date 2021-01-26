<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	  
	<h1>책 추가하기</h1>  
	<form method="post"  action="addbook.jsp">  
	<table>  
	<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>  
	<tr><td>Author:</td><td>  
	<input type="text" name="author"/></td></tr>  
	<tr><td>Comment:</td><td><input type="text" name="comment"/></td></tr>
	<tr><td>File Upload:</td><td><input type="text" name="file"/></td></tr>    
	<tr><td colspan="2"><input type="submit" value="Save" /></td></tr>
	<tr><td colspan="2"><button onclick=" location='listbook.jsp' " >Cancel</button></td></tr>    
	</table>  
	</form>  
 
</body>
</html>