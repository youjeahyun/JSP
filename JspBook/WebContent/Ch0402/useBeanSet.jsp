<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>useBeanSet.jsp �ڹٺ��� Person���� ���̵�� �̸��� �����ϱ� jsp�ڷḦ �ڹٿ� �ֱ� </title>
</head>
<body>
  <jsp:useBean id="person" class="ch04.dao.Person" scope="request" />
  <p> ���̵� : <%=person.getId() %>
  <p> ��   �� : <%=person.getName() %>
  <%
     person.setId(20200427);
     person.setName("�̼���");
  %>
  <jsp:include page="userBeanPerson.jsp"></jsp:include>
  <hr>
  <p> ���̵� : <%=person.getId() %>
  <p> ��   �� : <%=person.getName() %>
  <hr>
  <p> ���� �ϼ̽��ϴ� 
</body>
</html>