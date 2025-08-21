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
	String day = request.getParameter("day");
	
	switch(day) {
		case "월요일" :
			out.println("참 아름답다 다른의미로");
			break;
		case "금요일" :
			out.println("금요일 행복하다");
			break;
		default:
			out.println("오늘은" + day);
	}
	%>
</body>
</html>