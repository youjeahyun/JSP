<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage = "true" %>  
<!--  ����ó���� �� �ִ� exception ���� ��ü�� ����� �� �ֽ��ϴ�. �⺻���� false�̹Ƿ� ����� �־�� �� -->  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <h4> ������ �߻��߽��ϴ� </h4>
  <h5> exception ���尴ü�� ������ ó���ϱ� </h5>
  <%
     exception.printStackTrace(new PrintWriter(out));
  %>
</body>
</html>