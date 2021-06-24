<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import = "ch18.com.model.LoginBean" %>
<!DOCTYPE html>
<html>
<head>
<title>뷰 부분</title>
</head>
<body>
  <form name="loginFrm" action="ControllerServlet" method="post">
     <p> 아이디 : <input type="text" name="id">
     <p> 비밀번호 : <input type="password" name="passwd">
     <p> <input type="submit" value="전송">
  </form>
</body>
</html>