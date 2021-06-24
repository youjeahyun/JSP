<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>fileupload03-아파치에서 제공하는 commons-fileupload 외부 라이브러리 이용하기 </title>
</head>
<body>
  <form action="fileupload03_process.jsp" method="post" enctype="multipart/form-data">
      <p> 파일 : <input type="file" name="filename">
      <p> <input type="submit" value="send">
  </form>   
</body>
</html>