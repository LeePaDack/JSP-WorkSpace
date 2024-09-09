<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배열값 가져오고 받아오기</title>
</head>
<body>
	<h1>[] 활용해서 배열 값 작성하고 작성된 값 출력하기</h1>
	<%
		String[] fruits = {"사과", "바나나", "체리", "포도"};
	%>
	
	<pre>
		forEach 문을 활용해서 과일들 출력하기
	</pre>
	
	<%
		for(String f : fruits) {
			// ArrayController 만들고 /fruits 라는 api url 작성해서 과일 보이는 페이지 설정
			// out.println("과일 : " + f); // -> <ul> <li> 태그를 활용해서 출력으로 변경
			%> 
			<ul>
				<li><%= f %></li>
			</ul>
		<% } %>
		
	<a href="/">HOME</a>
</body>
</html>