<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.io.*" %>
<%@ page session="true" %>
<%@ page buffer="32kb" %>
<%@ page autoFlush="false" %>
<%@ page isThreadSafe="true" %> <!--  ture : 스레드처리 false : 순차처리  -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>디렉티브 태그 연습</title>
</head>
<body>
   <h1> 5 </h1>
   <%@ page info = "이곳은 JSP 컨테이너에 대한 설명을 쓰는 곳" %>
</body>
</html>   