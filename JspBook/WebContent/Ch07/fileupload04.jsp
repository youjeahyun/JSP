<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>fileupload form부분</title>
</head>
<body>
   <form name="fileName4" action="fileupload4_process.jsp" method="post" enctype="multipart/form-data">
      <p> 이 름 <input type="text" name="name" > 
      <p> 제목 <input type="text" name="subject">
      <p> 파일 <input type="file" name="filename" >
      <input type="submit" value="send">
   
   </form>
</body>
</html>