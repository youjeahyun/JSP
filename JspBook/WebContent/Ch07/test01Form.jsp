<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title> 파일 업로드 폼태그 만들기 </title>
</head>
<body>
  <form name="formFile1" action="test01_process1.jsp" method="post" enctype="multipart/form-data" >
    <p> 아이디 <input type="text" name="id" > 
    <p> 비밀번호 <input type="password" name="pw">
    <p> 보낼 자료는 <input type="text" name="senddata">
    <p> 파일 <input type="file" name="filename">
    <input type="submit" value="send" >
  
  </form>
</body>
</html>