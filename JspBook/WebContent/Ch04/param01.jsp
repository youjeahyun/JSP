<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <h3> param 액션 태그</h3>
   <jsp:forward page="parm01_data.jsp">
     <jsp:param name = "id" value="admin"/>
     <jsp:param name = "name" value='<%=java.net.URLEncoder.encode("관리자") %>' />
   </jsp:forward>
     
</body>
</html>