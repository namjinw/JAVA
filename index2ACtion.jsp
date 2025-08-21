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
	String name = request.getParameter("name");
	String agestr = request.getParameter("age");
	
	int age = 0;
	
	try {
		age = Integer.parseInt(agestr);
	} catch (Exception e) {
		out.println(e);
	}
	
	%>
	<p>이름: <%=name %></p>
	<p>나이: <%=age %></p>
	<%
	if (age >= 20) {
		out.println("<p>성인입니다.</p>");
	}
	else if (age < 0) {
		out.println("<script>");
		out.println("alert('제대로 입력하십시오')");
		out.println("location.href = 'index2.jsp';");
		out.println("</script>");
	}
	else if (age <= 20) {
		out.println("<p>미성년자입니다.</p>");
	}
	%>
</body>
</html>