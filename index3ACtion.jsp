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
	request.setCharacterEncoding("UTF-8");
	String agestr = request.getParameter("age");
	int age = 0;
	if (agestr != null && !agestr.equals("")) {
		age = Integer.parseInt(agestr);
	}
	
	if (age > 20) { %>
		<p>성인입니다.</p>
	<% } 
	else { %>
	<p>미성년자 입니다.</p>
	<% } %>

</body>
</html>