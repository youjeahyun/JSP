<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>request���尴ü�� ��� �������� �� �������� �� ����ϱ�</title>
</head>
<body>
  <p> Ŭ���̾�Ʈ IP : <%= request.getRemoteAddr() %>
  <p> ��û ���� ���� :  <%= request.getContentLength() %>
  <p> ��û ���� ���ڵ� : <%= request.getCharacterEncoding() %>
  <p> ��û ���� ������ ���� : <%= request.getContentType() %>
  <p> ��û ���� ��������  : <%= request.getProtocol() %>
  <p> ��û ���� ���� ��� : <%= request.getMethod() %>
  <p> ��û URI : <%= request.getRequestURI() %>
  <p> ������ ��� : <%= request.getContextPath() %>
  <p> ���� �̸� : <%= request.getServerName() %>
  <p> ���� ��Ʈ : <%= request.getServerPort() %>
  <p> ������ :      <%= request.getQueryString() %> 
</body>
</html>