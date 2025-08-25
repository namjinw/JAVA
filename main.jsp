<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
* {
    margin: 0;
    padding: 0;
}
.card-box {
    left: 300px;
    top: 150px;
    position: relative;
    width: 700px;
    border: 1px solid black;
    flex-wrap: wrap;
    display: flex;
    justify-content: flex-start;
    gap: 20px;
}
.card {
    position: relative;
    width: 150px;
    height: 200px;
    border-radius: 25px;
    box-shadow: 0px 1px 12px 0px;
    text-align: center;
}
.card > img {
    position: relative;
    top: 0;
    width: 120px;
    height: 100px;
    object-fit: contain;
    position: relative;
    margin-left: 7px;
    margin-top: 10px;
}
.p:hover {
    cursor: pointer;
    text-decoration: underline;
    color: #ff0000;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>메인 페이지</h1><p class="p" onclick="location='sho.jsp'">상품 등록하기</p>
    <div class="card-box">
    <%
    Connection conn;
    PreparedStatement pstmt;
    ResultSet rs;
    
    try {
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BBS", "root", "Pkea0812@");
    	
    	String sql = "SELECT * FROM product";
    	pstmt = conn.prepareStatement(sql);
    	
    	rs = pstmt.executeQuery();
    	
    	while(rs.next()) {
    		String name = rs.getString("name");
    		int price = rs.getInt("price");
    		String image = rs.getString("image");
    %>
        <div class="card">
            <img src="<%= image %>" alt="">
            <h1><%= name %></h1>
            <p><%= price %>원</p>
        </div>
    <%
    	}
    } catch (Exception e) {
    	e.printStackTrace();
    }
    %>
    </div>
</body>
</html>