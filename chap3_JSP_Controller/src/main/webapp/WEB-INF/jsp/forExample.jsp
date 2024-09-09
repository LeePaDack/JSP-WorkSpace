<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for 문 예제</title>
</head>
<body>
	<p>i 가 1 ~ 5 일 때</p>
	
	<%
	for(int i = 1; i <= 5; i++) { %>
		<strong>i 는 <%= i %> 이다.</strong><br>
	<% } %>
</body>
</html>