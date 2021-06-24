<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>서버쪽 response </title>
</head>
<body>
  <%
     request.setCharacterEncoding("utf-8");
     String id=request.getParameter("id");
     String passwd=request.getParameter("passwd");
     
     if( id.equals("admin") && passwd.equals("1234")){
    	 response.sendRedirect("response_success.jsp");
     }else{
    	 response.sendRedirect("response_fail.jsp");
     }
    	 
  %>
</body>
</html>