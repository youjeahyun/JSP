<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Action Tag���� �ڹٺ��� ó���ϴ� usebean</title>
</head>
<body>
  <jsp:useBean id="cal" class="ch04.dao.Calculator"/>
  <%
    int result = cal.process(5);
  %>
  <p> ��� ����� <%= result %>
</body>
</html>