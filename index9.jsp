<%@page import="java.util.ArrayList"%>
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
.card-box {
    width: 590px;
    display: flex;
    justify-content: flex-start;
    gap: 10px;
    flex-wrap: wrap;
    border: 1px solid black;
}
.card {
    width: 140px;
    height: 200px;
    box-shadow: 0px 2px 8px 0px;
    justify-content: center;
    text-align: center;
    cursor: pointer;
}
.card img {
    margin-top: 5px;
    width: 120px;
    height: 80px;
    object-fit: contain;
    font-size: 12px;
    border: 1px solid black;
}
.card > p:hover {
    text-decoration: underline;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	ArrayList<String> names = new ArrayList<>();
	ArrayList<Integer> price = new ArrayList<>();
	ArrayList<String> images = new ArrayList<>();
	
	names.add("스마트폰");
	price.add(200000);
	images.add("https://i.namu.wiki/i/TvS5wJ5F1ATi2odk-4neMOVkBpLgzraa6_eAeNek_tUrF1L2YZtT-zmTxurHXEkujWAqXylG7GD-yul92AZYBg.webp");
	
	names.add("컴퓨터");
	price.add(450000);
	images.add("https://i.namu.wiki/i/kUGqKDay3xxr0fnP08hvRGkkFheP4nvcZ8yRHdV64XHfUFUS7L_xMpdW4Ae0Tz1bjV6q3YQJW17mZPbzpPDMug.webp");
	
	names.add("컴퓨터");
	price.add(450000);
	images.add("https://i.namu.wiki/i/kUGqKDay3xxr0fnP08hvRGkkFheP4nvcZ8yRHdV64XHfUFUS7L_xMpdW4Ae0Tz1bjV6q3YQJW17mZPbzpPDMug.webp");
	
	names.add("컴퓨터");
	price.add(450000);
	images.add("https://i.namu.wiki/i/kUGqKDay3xxr0fnP08hvRGkkFheP4nvcZ8yRHdV64XHfUFUS7L_xMpdW4Ae0Tz1bjV6q3YQJW17mZPbzpPDMug.webp");
	
	names.add("컴퓨터");
	price.add(450000);
	images.add("https://i.namu.wiki/i/kUGqKDay3xxr0fnP08hvRGkkFheP4nvcZ8yRHdV64XHfUFUS7L_xMpdW4Ae0Tz1bjV6q3YQJW17mZPbzpPDMug.webp");
	%>
	<div class="card-box">
	<% 	for (int i = 0; i < names.size(); i++) { %>
        <div class="card">
            <img src="<%=images.get(i) %>" alt="">
            <h1><%=names.get(i) %></h1><br>
            <p><%=price.get(i) %>원</p><br>
        </div>
        <% } %>
    </div>
</body>
</html>