<%@ page language="java" contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL </title>
</head>
<body>
  <fmt:requestEncoding value="euc-kr"/>
  요청파라미터 :
  <% out.print(request.getParameter("id"));
  %>
  <form method="post" action="#">
     <p> 아이디 : <input type="text" name="id">
     <input type="submit" value="send"> 
  </form>
</body>
</html>