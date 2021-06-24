<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>param 액션 태크 연습 </title>
</head>
<body>
   <h3> 이 파일은 paramEx.jsp 파일 param 액션 연습자료 </h3>
   <jsp:include page = "secondParam.jsp" >
      <jsp:param name="date" value="<%= new java.util.Date() %>"  />
      <jsp:param name="irum" value= '<%=java.net.URLEncoder.encode("정현희") %>'  />
   </jsp:include>
   <p> =====================    
</body>
</html>