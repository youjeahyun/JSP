<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>request ���尴ü�� ��� http ��� ������ ����ϱ�</title>
</head>
<body>
   <%
      Enumeration en = request.getHeaderNames();
      while( en.hasMoreElements()) {
    	  String headerName = (String) en.nextElement();
    	  String headerValue = request.getHeader(headerName);
    	  long n = request.getDateHeader(headerValue);
    %>
    ��� �̸� :	<%= headerName %> <br>
    ��� �� :  	<%= headerValue %> <br>
    ��� ���� ���� :     <%= n %>
   <hr>
   <%  	 
      }
    %>
    <% Enumeration enn =request.getHeaders("accept-language");//������ name�� ��� ��ϰ��� ��������*/
       while ( enn.hasMoreElements() ) {
    	   String hv = (String) enn.nextElement();
    	   out.print(hv+"<br>");
 
       }
     %>
     <% Cookie[] cArr =request.getCookies();
        String cD = cArr[0].getDomain();
        out.print(cD);
     %>   
     
</body>
</html>







