<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "java.util.*" %>
<%@ page import ="java.io.*" %>
<!DOCTYPE html>
<html>
<head>

<title>Commons-fileupload를 이용하여 파일 업로드하기</title>
</head>
<body>
  <%
     String fileUploadPath = "c:\\upload";
     DiskFileUpload upload = new DiskFileUpload(); //객체화
     List items = upload.parseRequest(request);
     Iterator it = items.iterator();
     while(it.hasNext()){
    	 FileItem fileItem = (FileItem) it.next();
    	 if( !fileItem.isFormField() ) {
    		String fileName = fileItem.getName();
    		fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
    		File file = new File(fileUploadPath + "/" + fileName);
    		fileItem.write(file);		
    	 }
     }
  %>
</body>
</html>