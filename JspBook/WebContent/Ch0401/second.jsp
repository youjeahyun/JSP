<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLDecoder" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>action tag</title>
</head>
<body>
   <h3> 이곳은 second.jsp 파일입니다. </h3>
    전화번호 : <%= request.getParameter("phone") %>
  <br>
  <%
     String name = request.getParameter("data");
     String dept = request.getParameter("dept");
  %>
    학과 : <%=java.net.URLDecoder.decode(dept)%> <br>
    이름 : <%=java.net.URLDecoder.decode(name)%>   <br>
    나이 : <%= request.getParameter("age") %>
  
</body>
</html>