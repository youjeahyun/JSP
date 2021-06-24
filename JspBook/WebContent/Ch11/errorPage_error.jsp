<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Exception-page디렉티브 태그에 errorPage속성을 이용하여서 오류 페이지 호출하기 </title>
</head>
<body>
   <p> 오류 발생하였습니다
   <p> 예외유형은 <%=exception.toString() %>
   <p> 예외 클래스 <%=exception.getClass().getName() %>
   <p> 오류 메시지 <%=exception.getMessage() %>
</body>
</html>