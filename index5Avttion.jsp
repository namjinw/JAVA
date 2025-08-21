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
	if (agestr != null && !agestr.equals("")) {
		age = Integer.parseInt(agestr);
	}
	String gender = request.getParameter("gender");
	
	if (gender.equals("남자") && age >= 20) {
		out.println("안녕하세요 젋은 신사님!");
	}
	else if (gender.equals("남자") && age < 20) {
		out.println("안녕하세요. 남학생분!");
	}
	else if (gender.equals("여자") && age >= 20) {
		out.println("안녕하세요. 영애님!");
	}
	else if (gender.equals("여자") && age < 20) {
		out.println("안녕하세요. 여학생분!");
	}
	%>
</body>
</html>