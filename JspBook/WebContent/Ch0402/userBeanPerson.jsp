<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ڹٺ��� Person�� �����ϰ� useBean �׼���ũ�� PersonŬ������ ����Ͽ� ���̵�� �̸� ����ϱ�
       �ڹ��� �ڷḦ jsp�� �����ͼ� ���   </title>
</head>
<body>
  <jsp:useBean id="person" class="ch04.dao.Person" scope="request"/>
  <p> ���̵� : <%=person.getId() %>
  <p> �̸� : <%=person.getName() %>
</body>
</html>