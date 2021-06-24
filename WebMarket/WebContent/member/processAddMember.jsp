<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<title>회원가입폼을 DB안에 넣기 processAddMember.jsp</title>
</head>
<body>
 <% 
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String year = request.getParameter("birthyy");
    String month = request.getParameter("birthmm");
    String day = request.getParameter("birthdd");
    String birth = year + "/" + month + "/" + day;
    String mail1 = request.getParameter("mail1");
    String mail2 = request.getParameter("mail2");
    String mail = mail1 + "@" + mail2;
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    
    Date currentDateTime = new Date(System.currentTimeMillis());
    java.sql.Date sqlDate = new java.sql.Date(currentDateTime.getTime());
    java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDateTime.getTime());
  
 %>
 
 <sql:setDataSource var="dataSource" url="jdbc:mysql://localhost:3307/WebMarketDB" 
                    driver="com.mysql.jdbc.Driver" user="root" password="zxc12564!"/>
 <sql:update dataSource="${dataSource}" var="resultSet">
    INSERT INTO member VALUES(?,?,?,?,?,?,?,?,?)
    <sql:param value="<%=id%>"/>
    <sql:param value="<%=password%>"/>
    <sql:param value="<%=name%>"/>
    <sql:param value="<%=gender%>"/>
    <sql:param value="<%=birth%>"/>
    <sql:param value="<%=mail%>"/>
    <sql:param value="<%=phone%>"/>
    <sql:param value="<%=address%>"/>
    <sql:param value="<%=timestamp%>"/>
 </sql:update>                    
  <c:if test="${resultSet>=1}">
     <c:redirect  url="resultMember.jsp?msg=1"/>
  </c:if>
</body>
</html>


