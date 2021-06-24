<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html >
<html>
<head>
<title>회원정보 삭제 DB</title>
</head>
<body>
 <% 
    String sessionId = (String) session.getAttribute("sessionId");
  
 %>
 <sql:setDataSource var="dataSource" url="jdbc:mysql://localhost:3307/WebMarketDB" 
                    driver="com.mysql.jdbc.Driver" user="root" password="zxc12564!"/>
 <sql:update dataSource="${dataSource}" var="resultSet">
    DELETE FROM member WHERE id=?
        <sql:param value="<%=sessionId%>"/>
 </sql:update>                    
  <c:if test="${resultSet>=1}">
     <c:import var="url" url="logoutMember.jsp"/>
     <c:redirect  url="resultMember.jsp"/>
  </c:if>
</body>
</html>