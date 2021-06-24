<%@ page language="java" contentType="text/html; charset=utf-8" %>
 
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
   <%
      request.setCharacterEncoding("utf-8");
      String name = request.getParameter("name");
   %>
   <p>
      이름 : <%= name %> <br>
      요청 정보 길이 : <%= request.getContentLength() %> <br>
      클라이언트 전송방식: <%= request.getMethod() %>
      요청 URI : <%= request.getRequestURI() %>
      서버이름 : <%= request.getServerName() %>
      포트번호 : <%= request.getServerPort() %>      
</body>
</html>