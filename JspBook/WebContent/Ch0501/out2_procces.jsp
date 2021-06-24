<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <% request.setCharacterEncoding("utf-8");
      String s1 = request.getParameter("s1");
      String s2 = request.getParameter("s2");
      String s3 = request.getParameter("s3");
      String r1 = request.getParameter("r1");
   %>
   <p> 수강신천하신 과목은
    <% if(s1 != null) out.print("국어   "); 
       if(s2 != null) out.print("영어   ");
       if(s3 != null) out.print("수학"); %>
   <p> 담당 교수명은
      <% if( r1 != null )  out.print(r1); %>
</body>
</html>