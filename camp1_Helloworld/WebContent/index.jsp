<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>hello world!</h1>
<%out.print("This's scriptlet tag."); %>
<br>
<%! int data=100; %>
<%="Value of the variable is : "+data+"!!" %>
<br>
<%! int square_size(int n){return n*n;} %>
<%= "square size : "+square_size(5) %>
<br>
<% String name=request.getParameter("user_name");
out.print("Welcome " + name);%>
<% String kindaPhone ="Apple";
session.setAttribute("kinda_phone", kindaPhone);
out.print("Your Phone kind is " + kindaPhone);%>
<br>
</body>
</html>