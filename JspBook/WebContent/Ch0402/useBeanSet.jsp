<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>useBeanSet.jsp 자바빈즈 Person으로 아이디와 이름을 설정하기 jsp자료를 자바에 넣기 </title>
</head>
<body>
  <jsp:useBean id="person" class="ch04.dao.Person" scope="request" />
  <p> 아이디 : <%=person.getId() %>
  <p> 이   름 : <%=person.getName() %>
  <%
     person.setId(20200427);
     person.setName("이순신");
  %>
  <jsp:include page="userBeanPerson.jsp"></jsp:include>
  <hr>
  <p> 아이디 : <%=person.getId() %>
  <p> 이   름 : <%=person.getName() %>
  <hr>
  <p> 수고 하셨습니다 
</body>
</html>