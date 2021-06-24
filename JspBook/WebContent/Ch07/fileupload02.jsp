<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>file 여러개 업로드하기</title>
</head>
<body>
   <form name="fileForm" method="post" encType="multipart/form-data" action="file_upload_process02.jsp" >
     <p> 이름1 : <input type="text" name="name1">
                 제목1 : <input type="text" name="subject1" >
                 파일1 : <input type="file" name="filename1">
     <p> 이름2 : <input type="text" name="name2">
                 제목2 : <input type="text" name="subject2" >
                 파일2 : <input type="file" name="filename2">
     <p> 이름3 : <input type="text" name="name3">
                 제목3 : <input type="text" name="subject3" >
                 파일3 : <input type="file" name="filename3">
     <p> <input type="submit" value="send" >                                            
   </form>
 </body>
</html>