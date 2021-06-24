<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>setProperty액션태그가 자바빈즈 Person으로 아이디와 이름을 설정하여 출력하기
    setProperty의 속성에서 name은 useBean의 id와 같은 것 
                       property은 Person클래스의 메소드 중에서 setId()에서 set제외한 id를 써줄 것
</title>
</head>
<body>
  <jsp:useBean id="person" class="ch04.dao.Person" scope="request" />
    <jsp:setProperty property="id" name="person" value="20201225"/>
    <jsp:setProperty property="name" name="person" value="정현희"/>
    <jsp:setProperty property="password" name="person" value="567567"/>
    <jsp:setProperty property="phone" name="person" value="78907890"/>
   <p> 아이디 : <%=person.getId() %>
   <p> 이름 : <%=person.getName() %>
   <p> 비밀번호 : <%=person.getPassword() %>
   <p> 전화번호 : <%=person.getPhone() %> 
</body>
</html>