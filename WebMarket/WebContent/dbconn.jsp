<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>데이터베이스 연결하는 공통 부분</title>
</head>
<body>
 <%
    Connection conn = null;
    try {
    	String url = "jdbc:mysql://localhost:3306/WebMarketDB";
    	String user="root";
    	String password="1234";
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	conn = DriverManager.getConnection(url, user, password);
     }catch(SQLException e){
    	 out.println("데이터베이스 연결이 실패했습니다.");
    	 out.println("SQLException : " + e.getMessage());
     }
 %>
</body>
</html>