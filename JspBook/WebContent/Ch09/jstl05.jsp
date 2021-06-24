<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL - 날짜 형식</title>
</head>
<body>
  <!-- 자바빈즈 사용하기  -->
  <p> <jsp:useBean id="now" class="java.util.Date" />
  <p> <fmt:formatDate value="${now}" type="date" />
  <p> <fmt:formatDate value="${now}" type="time" />
  <p> <fmt:formatDate value="${now}" type="both" />
  <p> <fmt:formatDate value="${now}" type="both" 
               dateStyle="default" timeStyle="default"/>
  <p> <fmt:formatDate value="${now}" type="both" 
               dateStyle="short" timeStyle="short"/>
  <p> <fmt:formatDate value="${now}" type="both" 
               dateStyle="medium" timeStyle="medium"/>
  <p> <fmt:formatDate value="${now}" type="both" 
               dateStyle="long" timeStyle="long"/>
  <p> <fmt:formatDate value="${now}" type="both" 
               dateStyle="full" timeStyle="full"/>
  <p> <fmt:formatDate value="${now}" type="both" 
              pattern="yyyy년 MM월 dd일 HH시 mm분 ss초 E요일" />                                                                             
</body>
</html>