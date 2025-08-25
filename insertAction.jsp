<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
	String objectname = request.getParameter("objectname");
	String pricestr = request.getParameter("price");
	String URL = request.getParameter("imglink");
	
	int price = Integer.parseInt(pricestr);
	
	Connection conn;
	PreparedStatement pstmt;
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BBS?useSSL=false&serverTimezone=UTC", "root", "Pkea0812@");
		
		String sql = "INSERT INTO product(name, price, image) VALUES (?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, objectname);
		pstmt.setInt(2, price);
		pstmt.setString(3, URL);
		
		int result = pstmt.executeUpdate();
		
		if (result > 0) {
			out.println("<script>alert('상품이 등록 되었습니다.'); location.href='main.jsp';</script>");
		}
		else {
			out.println("<script>alert('상품이 등록이 실패했습다.'); history.back();</script>");
		}
	} catch (Exception e){
		e.printStackTrace();
		out.println("<script>alert('상품이 등록이 실패했습니다.'); history.back();</script>");
	}
	%>
</body>
</html>