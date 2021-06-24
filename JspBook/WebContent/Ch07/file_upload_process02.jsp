<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>file 여러개 업로드하기</title>
</head>
<body>
  <%
    MultipartRequest multi =
      new MultipartRequest( request, "c:\\upload", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy()  );
    
    String name1 = multi.getParameter("name1");
    String subject1 = multi.getParameter("subject1");
    
    String name2 = multi.getParameter("name2");
    String subject2 = multi.getParameter("subject2");
    
    String name3 = multi.getParameter("name3");
    String subject3 = multi.getParameter("subject3");
    
    Enumeration files = multi.getFileNames();
    
    String file3 = (String) files.nextElement();
    String filename3 = multi.getFilesystemName(file3);
    
    String file2 = (String) files.nextElement();
    String filename2 = multi.getFilesystemName(file2);
    
    String file1 = (String) files.nextElement();
    String filename1 = multi.getFilesystemName(file1);
  %>
  <p> 이름1 : <%= name1 %> &nbsp; &nbsp; 이름2 : <%= name2 %>  &nbsp; &nbsp;  이름3 : <%= name3 %>  <br>
  <p> 제목1 : <%= subject1 %> &nbsp; &nbsp; 제목2 : <%= subject2 %>  &nbsp; &nbsp;  제목3 : <%= subject3 %>  <br>
  <p> 파일명1 : <%= filename1 %> &nbsp; &nbsp; 이름2 : <%= filename2 %>  &nbsp; &nbsp;  이름3 : <%= filename3 %>  <br>
   
  
</body>
</html>





