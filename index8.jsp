<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {
	margin: 0;
	padding: 0;
}
body {
	display: flex;
	align-items: center;
	justify-content: center;
}
.card-box {
	border: 1px solid black;
	width: 600px;
	height: 400px;
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}
.card {
	width: 140px;
	height: 100px;
	display: flex;
	align-items: center;
	justify-content: center;
	border: 1px solid black;
	font-size: 12px;
}
.card:hover {
	color: red;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="card-box">
		<%
		for (int i = 0; i < 5; i++) {
		%>
		<div class="card">
			<h1>카드번호:<%= i + 1%></h1>
		</div>
		<%} %>
	</div>
</body>
</html>