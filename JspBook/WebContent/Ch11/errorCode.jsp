<%@ page language="java" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
<title> web.xml 파일에 오류 코드로 오류 페이지 호출하기  </title>
</head>
<body>
 <form action="errorCode_process.jsp" method="post">
   <p> 숫자1 : <input type="text" name="num1">
   <p> 숫자2 : <input type="text" name="num2">
   <input type="submit" value="나누기" >
 </form>
</body>
</html>