<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>5�ʸ��� jsp������ �����ϱ�</title>
</head>
<body>
   <p> �� �������� 5�ʸ��� ���ΰ�ħ(����) �˴ϴ�.
   <%
      response.setIntHeader("Refresh", 5);
   %>
   <p> <%= new java.util.Date() %>
</body>
</html>