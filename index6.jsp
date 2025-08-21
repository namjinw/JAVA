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
	String[] subjects = {"국어", "영어", "수학"};
	int i = 0;
	while(i < subjects.length) { %>
	<p>현재 과목은:<%= subjects[i]%></p> 
	<% i++;
	}%>
</body>
</html>