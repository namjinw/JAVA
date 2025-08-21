<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int[] score = {98, 1, 78, 57};
	for (int i = 0; i < score.length; i++) {
	%>
	<p>과목은: <%= i + 1 %>학생의 점수는: <%=score[i] %></p>
	<% } %>
</body>
</html>