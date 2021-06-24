<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<title>processLoginMember.jsp 파일 - 로그인 폼에서 사용자와 비밀번호를 치고 전송하면 오는 서버 파일</title>
</head>
<body>
  <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String passwd = request.getParameter("password");
    
  %> 
  <sql:setDataSource var="dataSource" 
       url="jdbc:mysql://localhost:3307/WebMarketDB"  driver="com.mysql.jdbc.Driver" user="root" password="zxc12564!" />
  
  <sql:query dataSource="${dataSource}" var="resultSet">
    SELECT * FROM member WHERE id=? and password=?   
    <sql:param value="<%=id%>" />
    <sql:param value="<%=passwd%>" />
  </sql:query>     
  <c:forEach var="row" items="${resultSet.rows}">
      <%
        session.setAttribute("sessionId", id);
      %>
      <c:redirect  url="resultMember.jsp?msg=2" />
  </c:forEach>
  <c:redirect url="loginMember.jsp?error=1"></c:redirect>
</body>
</html>



