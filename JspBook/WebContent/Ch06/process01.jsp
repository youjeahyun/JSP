<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<title>Process01.jsp파일-요청파라미터 전체값 받기 </title>
</head>
<body>
  <%
    request.setCharacterEncoding("utf-8");
    Enumeration paramNames = request.getParameterNames();
    while(paramNames.hasMoreElements()){
    	String name = (String) paramNames.nextElement();
    	out.println("<br>" + name);
    	String value = request.getParameter(name);
    	out.println("  :  " + value);
    }
  %>
</body>
</html>