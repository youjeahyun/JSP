<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page errorPage="exception_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Exception-page디렉티브 태그에 errorPage속성을 이용하여서 오류 페이지 호출하기 </title>
</head>
<body>
  <%
     String num1 = request.getParameter("num1");
     String num2 = request.getParameter("num2");
     
     int a = Integer.parseInt(num1);
     int b = Integer.parseInt(num2);
     
     int c= a / b;
     out.println( num1 + " / " + num2 + "="  + c );
     
  %>
</body>
</html>