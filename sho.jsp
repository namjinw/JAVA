<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insertAction.jsp" method="post">
		<input type="text" name="objectname" required="required" placeholder="상품이름"><br>
		<input type="text" name="price" required="required" placeholder="상품가격"><br>
		<input type="text" name="imglink" required="required" placeholder="상품사진링크"><br>
		<input type="submit" value="등록">
	</form>
</body>
</html>