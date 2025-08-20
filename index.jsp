<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력 폼</title>
</head>
<body>
	<%
		String Student = null;
	
		if (session.getAttribute("studentName") != null) {
			Student = (String) session.getAttribute("studentName");
		}
		
		String classnumber = null;
		
		if (session.getAttribute("classNumber") != null) {
			classnumber = (String) session.getAttribute("classNumber");
		}
		
		Integer score = (Integer) session.getAttribute("score");
	%>
	
	<% if (Student == null) { %>
	<form action="bookAction.jsp" method="post">
		<h1>학생이름</h1><input type="text" name="studentName" required="required"><br>
		<h1>학생번호</h1><input type="text" name="classNumber" required="required"><br>
		<h1>시험성적</h1><input type="text" name="score" required="required"><br>
		<h1>제출</h1><input type="submit" value="성적 등록"><br>
	</form>
	<%  } else { %>
	
	<h1>학생이름 <%= Student%></h1>
	<h1>학생번호 <%= classnumber%>번</h1>
	<h1>학생점수 <%= score%>점</h1>
	<a href="remove.jsp">등록하기</a>
	<% } %>
</body>
</html>