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
   <h3> �̰��� second.jsp �����Դϴ�. </h3>
    ��ȭ��ȣ : <%= request.getParameter("phone") %>
  <br>
  <%
     String name = request.getParameter("data");
     String dept = request.getParameter("dept");
  %>
    �а� : <%=java.net.URLDecoder.decode(dept)%> <br>
    �̸� : <%=java.net.URLDecoder.decode(name)%>   <br>
    ���� : <%= request.getParameter("age") %>
  
</body>
</html>