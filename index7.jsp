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
	String[] name = {"남진우", "최정원", "정유환"};
	for (String nametag : name) {
	%>
	<p>이름:<%= nametag %></p>
	<%}%>
</body>
</html>