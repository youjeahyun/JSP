<%@ page language="java" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
<title> web.xml 파일에 오류 코드로 오류 페이지 호출하기  </title>
</head>
<body>
  <%
    String num1 = request.getParameter("num1");
    String num2 = request.getParameter("num2");
    
    int a=Integer.parseInt(num1);
    int b=Integer.parseInt(num2);
    
    int c = a / b;
    out.println( num1 + "/" + num2 + "=" + c);
  %>
</body>
</html>