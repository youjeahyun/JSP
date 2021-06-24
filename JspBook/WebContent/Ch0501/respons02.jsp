<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>응답 http헤데에 정보 추가하기</title>
</head>
<body>
   <%
      response.setHeader("Cache-control", "use_cache");
      response.addHeader("contentType", "text/html; charset=utf-8");
      response.setDateHeader("date", 1000L);
      response.setIntHeader("start", 1000);
   %>
   	  Cache-Control : <%= response.getHeader("Cache-control") %>
      contentType : <%= response.getHeader("contentType") %>
      date : <%= response.getHeader("date") %>
      start : <%= response.getHeader("start") %>
</body>
</html>