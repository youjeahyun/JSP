<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>유효성 검사</title>
<script type="text/javascript">
   function checkform() {
	   alert("아이디 : " + document.loginForm.id.value + "\n" + 
			 "비밀번호 : " + document.loginForm.passwd.value );
   }
</script>
</head>
<body>
  <form name="loginForm" action="validation01_process.jsp" method="post">
     <p> 아이디 : <input type="text" name="id"> 
     <p> 비밀번호 : <input type="password" name="passwd">
                  <input type="submit" value="send" onclick="checkform()"> 
  </form>
</body>
</html>