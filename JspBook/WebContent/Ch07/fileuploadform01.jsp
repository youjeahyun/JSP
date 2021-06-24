<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title> 파일 업로드 폼 </title>
</head>
<body>
  <form name="fileForm" method="post" enctype="multipart/form-data" action="process.jsp">
     <p> 이름 : <input type="text" name="name">
     <p> 제목 : <input type="text" name="title">
     <p> 파일 : <input type="file" name="filename">
     <p> <input type="submit" value="전송">
  </form>
</body>
</html>