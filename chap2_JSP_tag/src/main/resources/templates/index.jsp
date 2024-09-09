<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법 사용 예제 1</title>
</head>
<body>
	<h1>JSP 문법 태그 사용하기</h1>
	<pre>
		JSP 문법을 사용하기 위해서는 index.jsp 페이지 안에서 
		<% %> 작성 후 <% %> 안에 자바처럼 작성해주면 됨
	</pre>
	
	<%
	String name = "Student";
	System.out.println("name : " + name);
	%>
	<pre>
		jsp 를 사용하기 위해서는
		프로젝트 우클릭 -> Properties 클릭 -> Java Build Path -> Libraries -> AddLibrary
		Server Runtime -> Apache Tomcat 설정
		
		Springboot + JSP -> Springboot + React (+ Option) NextJs or TypeScript
	</pre>
	
	<h3> JSP <% %> 태그 사용하기</h3>
	<pre>
		이 페이지에서만 사용할 변수를 작성할 때는 <% %> 만 사용
		JSP 에서 System.out.println 을 사용할 때는 
		System 을 지워주고 사용
		** 18 라인
		-> out.println("name : " + name);
	</pre>
	
	<h4>If 문으로 확인하는 JSP 예제</h4>
	
	<pre>만약에 i 가 10 보다 크다면 10 보다 크다 출력, </pre>
	<%
	int i = 0;
	
	if (i > 10) {
		out.println("i 는 10 보다 크다.");
	}
	else {
		out.println("i 는 10 보다 작다.");
	}
	%>
	
	<% 
	int a = 0; 
	
	if (a > 10) { %>
		a 는 10 보다 크다.
	<% } else { %>
		a 는 10 보다 작다.
	<% } %>

	<p>만약에 b 가 1 보다 크면, 1 보다 큽니다. 
	4 ~ 5 사이에 존재합니다. else if 문 사용해서 <% %> 태그 완성
	10 보다 작습니다.</p>

	<%
	int b = 0;
	
	if (b > 1) {
		out.println("b 는 1 보다 크다.");
	}
	else if (b <= 5 && b >= 4) {
		out.println("b 는 4 ~ 5 사이에 존재한다.");
	}
	else {
		out.println("b 는 10 보다 작다.");
	}
	%>
	
	<p> 다른 방법 </p>
	
	<%
	int c = 0;
	
	if (c > 1) { %>
		<p>c 는 1 보다 크다.</p>
	<% } else if (c <= 5 && c >= 4) { %>
		<p>c 는 4 ~ 5 사이에 존재한다.</p>
	<% } else { %>
		<p>c 는 10 보다 작다.</p>
	<% } %>
	
	
</body>
</html>