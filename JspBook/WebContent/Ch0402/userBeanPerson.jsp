<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>자바빈즈 Person을 생성하고 useBean 액션태크에 Person클래스를 사용하여 아이디와 이름 출력하기
       자바의 자료를 jsp로 가져와서 출력   </title>
</head>
<body>
  <jsp:useBean id="person" class="ch04.dao.Person" scope="request"/>
  <p> 아이디 : <%=person.getId() %>
  <p> 이름 : <%=person.getName() %>
</body>
</html>