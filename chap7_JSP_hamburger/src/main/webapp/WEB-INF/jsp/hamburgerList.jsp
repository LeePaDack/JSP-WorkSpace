<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hamburger JPA</title>
</head>
<body>
	<h1>햄버거 리스트</h1>
	<table border="1">
		<thead>
			<tr>	
				<td>ID</td>
				<td>이름</td>
				<td>가격</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="hamburger" items="${hamburgers}">
				<tr>
					<td>${hamburger.id}</td>
					<td>${hamburger.hamburgername}</td>
					<td>${hamburger.hamburgerprice}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<h2>햄버거 추가하기</h2>
	<form action="/addHamburger" method="post">
		이름 : <input type="text" name="hamburgername"/>
		가격 : <input type="number" name="hamburgerprice"/>
		저장하기 <input type="submit" name="save hamburger"/>
	</form>
	
</body>
</html>