<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>자바빈즈 Person을 이용하여 아이디와 이름을 가져와 출력하기 </title>
</head>
<body>
  <jsp:useBean id="person" class="ch04.dao.Person"  scope="request" />
  <p> 아이디 :<jsp:getProperty property="id" name="person"/> 같은 것  <%=person.getId() %>
  <p> 이름   :<jsp:getProperty property="name" name="person"/> 같은 것 <%=person.getName() %>
  <p> 비밀번호 : <jsp:getProperty property="password" name="person"/> 같은 것 <%=person.getPassword() %>
  <p> 전화번호 : <jsp:getProperty property="phone" name="person"/> 같은 것 <%=person.getPhone() %>
  
  <p> <jsp:setProperty property="id" name="person" value="11"/> 같은 것  <% person.setId(11); %>
  <p> 이름   :<jsp:setProperty property="name" name="person" value="최경주"/> 같은 것 <% person.setName("최경주"); %>
  <p> 비밀번호 : <jsp:setProperty property="password" name="person" value="9090"/> 같은 것 <% person.setPassword("9090");%>
  <p> 전화번호 : <jsp:setProperty property="phone" name="person" value="777"/> 같은 것 <% person.setPhone("777"); %>
  <hr>
  <p> 아이디 :<jsp:getProperty property="id" name="person"/> 같은 것  <%=person.getId() %>
  <p> 이름   :<jsp:getProperty property="name" name="person"/> 같은 것 <%=person.getName() %>
  <p> 비밀번호 : <jsp:getProperty property="password" name="person"/> 같은 것 <%=person.getPassword() %>
  <p> 전화번호 : <jsp:getProperty property="phone" name="person"/> 같은 것 <%=person.getPhone() %> 
    
</body>
</html>