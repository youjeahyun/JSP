<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>out객체 사용</title>
</head>
<body> 
   <%
       out.println("Hello" + "<br>");
       out.println("Java Server Page");
       out.println("오늘 날짜와 시간" + "<br>");
       out.println(Calendar.getInstance().getTime());
   %>
</body>
</html>