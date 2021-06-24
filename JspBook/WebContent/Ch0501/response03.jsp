<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>5초마다 jsp페이지 갱신하기</title>
</head>
<body>
   <p> 이 페이지는 5초마다 새로고침(갱신) 됩니다.
   <%
      response.setIntHeader("Refresh", 5);
   %>
   <p> <%= new java.util.Date() %>
</body>
</html>