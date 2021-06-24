<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<title> 서버쪽 파일 업로드 코드 common-fileupload.jar 파일 이용</title>
</head>
<body>
  <%
     String path="c:\\upload";
  
     DiskFileUpload upload = new DiskFileUpload();
     
     upload.setSizeMax(5*1024*1024);
     upload.setSizeThreshold(4096);
     upload.setRepositoryPath(path);
     
     List items = upload.parseRequest(request);
     
     Iterator params = items.iterator();
     
  
  %>
</body>
</html>