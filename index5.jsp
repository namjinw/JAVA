<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="index5Avttion.jsp" method="post">
		<input type="text" name="name" required="required" placeholder="이름"><br>
		<input type="text" name="age" required="required" placeholder="나이"><br>
		<input type="radio" name="gender" value="남자"><label>남자</label>
		<input type="radio" name="gender" value="여자"><label>여자</label><br>
		<input type="submit" value="제출">
	</form>
</body>
</html>