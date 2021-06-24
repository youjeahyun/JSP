<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Action Tag</title>
</head>
<body>
   <h3> 이파일은 first.jsp입니다</h3>
   <jsp:forward page="second.jsp">
      <jsp:param name="data" value='<%= java.net.URLEncoder.encode("정현희") %>' />
      <jsp:param name="dept" value='<%= java.net.URLEncoder.encode("소프트웨어공학") %>'/>
      <jsp:param name="age" value="20"/>
      <jsp:param name="phone" value="01087443334"/>
  
   </jsp:forward>
   <p> 이 곳은 include 액션 태그 이후의 위치입니다. 

</body>
</html>