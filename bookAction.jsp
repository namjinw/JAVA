<%@ page import="JSPjava.Book" %>
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
	
		String Student = request.getParameter("studentName");
		String classnumber = request.getParameter("classNumber");
		int score = 0;
		
		try {
			score = Integer.parseInt(request.getParameter("score"));
		} catch (NumberFormatException  e) {
			score = 0;
		}
		
		session.setAttribute("studentName", Student);
		session.setAttribute("classNumber", classnumber);
		session.setAttribute("score", score);
		
		response.sendRedirect("index.jsp");
	%>
</body>
</html>