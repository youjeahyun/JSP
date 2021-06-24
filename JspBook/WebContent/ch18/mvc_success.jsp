<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import = "ch18.com.model.LoginBean" %>
<!DOCTYPE html>
<html>
<head>
<title>뷰 부분</title>
</head>
<body>
	<p>로그인 성공했습니다.</p>
	<%
		LoginBean bean =(LoginBean) request.getAttribute("bean");
	%>
	<%@ include file="mvc.jsp" %>
</body>
</html>