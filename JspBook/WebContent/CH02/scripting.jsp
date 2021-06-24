<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Script Tag</title>
</head>
<body>
   <h2> Scripting tag </h2>
   <%
     int sum=0;
     for(int i=1; i<=10;  i++){
    	 out.print(i+"<br>");
    	 sum += i;
     }
     //int result=calc(sum);
   %>
   <p> 합계 = 
   <%= sum %>
    
</body>
</html>