<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ڹٺ��� Person�� �̿��Ͽ� ���̵�� �̸��� ������ ����ϱ� </title>
</head>
<body>
  <jsp:useBean id="person" class="ch04.dao.Person"  scope="request" />
  <p> ���̵� :<jsp:getProperty property="id" name="person"/> ���� ��  <%=person.getId() %>
  <p> �̸�   :<jsp:getProperty property="name" name="person"/> ���� �� <%=person.getName() %>
  <p> ��й�ȣ : <jsp:getProperty property="password" name="person"/> ���� �� <%=person.getPassword() %>
  <p> ��ȭ��ȣ : <jsp:getProperty property="phone" name="person"/> ���� �� <%=person.getPhone() %>
  
  <p> <jsp:setProperty property="id" name="person" value="11"/> ���� ��  <% person.setId(11); %>
  <p> �̸�   :<jsp:setProperty property="name" name="person" value="�ְ���"/> ���� �� <% person.setName("�ְ���"); %>
  <p> ��й�ȣ : <jsp:setProperty property="password" name="person" value="9090"/> ���� �� <% person.setPassword("9090");%>
  <p> ��ȭ��ȣ : <jsp:setProperty property="phone" name="person" value="777"/> ���� �� <% person.setPhone("777"); %>
  <hr>
  <p> ���̵� :<jsp:getProperty property="id" name="person"/> ���� ��  <%=person.getId() %>
  <p> �̸�   :<jsp:getProperty property="name" name="person"/> ���� �� <%=person.getName() %>
  <p> ��й�ȣ : <jsp:getProperty property="password" name="person"/> ���� �� <%=person.getPassword() %>
  <p> ��ȭ��ȣ : <jsp:getProperty property="phone" name="person"/> ���� �� <%=person.getPhone() %> 
    
</body>
</html>