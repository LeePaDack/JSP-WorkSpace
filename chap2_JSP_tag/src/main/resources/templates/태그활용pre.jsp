<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 태그 활용 실습</title>
</head>
<body>
	<h3>for 문을 활용해서 i 출력하는 코드 작성 (i = 1 ~ 5)</h3>

	<%
	
	for(int i = 1; i <= 5 ; i++) { %>
		<p>i 는 <%= i %> 이다.</p>
	<% } %>

</body>
</html>