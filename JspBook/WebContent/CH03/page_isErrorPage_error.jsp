<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage = "true" %>  
<!--  예외처리할 수 있는 exception 내장 객체를 사용할 수 있습니다. 기본값은 false이므로 명시해 주어야 함 -->  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <h4> 에러가 발생했습니다 </h4>
  <h5> exception 내장객체로 에러를 처리하기 </h5>
  <%
     exception.printStackTrace(new PrintWriter(out));
  %>
</body>
</html>