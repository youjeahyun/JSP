<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>response���尴ü�� ���� �����ڵ�� ���� �޽��� ������</title>
</head>
<body>
   <% 
      response.setCharacterEncoding("utf-8");
      response.setContentType("text/html; charset=utf-8");
      response.sendError(500, "���� Ʈ������ �����ϴ�. ����� �ٽ� �����ϼ���");
   %>
   <p> ���� ���ڵ� : <%= response.getCharacterEncoding() %>
   <p> ������ ���� : <%= response.getContentType() %>
</body>
</html>