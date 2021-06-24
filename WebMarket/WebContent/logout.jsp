<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>logout form</title>
</head>
<body>
  <%
     session.invalidate();
     response.sendRedirect("addProduct.jsp"); 
  %>
</body>
</html>