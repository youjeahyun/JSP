<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html >
<html>
<head>
<title>Security02.jsp</title>
</head>
<body>
  <p>사용자명 : <%=request.getRemoteUser() %>
  <p> 인증방법 : <%=request.getAuthType() %>
  <p> 인증한 사용자명의 역할명 "tomcat"에 속하는 사용자인가요?
  <%= request.isUserInRole("tomcat") %>
  <p> 인증한 사용자명이 역할명 "role1"에 속하는 사용자인가요?
  <%= request.isUserInRole("role1") %> 
  <p> 웹 브라우저의 요청 프로토콜은? 
  <%= request.getProtocol() %>
  <p> https:주소면 true 아니면 false <%= request.isSecure() %>
  
</body>
</html>