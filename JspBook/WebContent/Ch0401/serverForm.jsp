<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
   String address=request.getParameter("address");
   String school = request.getParameter("school");
   String name = request.getParameter("data");
   
%>
   주소 : <%= URLDecoder.decode(address) %> <br>
   학교명:<%= URLDecoder.decode(school) %> <br>
   이름 : <%= URLDecoder.decode(name) %> <br>
       
</body>
</html>