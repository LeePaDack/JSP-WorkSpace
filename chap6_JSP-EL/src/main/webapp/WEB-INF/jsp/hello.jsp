<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사 메세지 페이지</title>
</head>
<body>
	<h1>index.jsp 에서 전달받은 데이터 출력하기</h1>
	
	<!-- EL 태그를 사용해서 request 로 전달된 데이터를 출력 -->
	<p>전달받은 메세지 : ${msg}</p>
</body>
</html>