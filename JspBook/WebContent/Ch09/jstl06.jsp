<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL-시간태그</title>
</head>
<body>
  <jsp:useBean id="now" class="java.util.Date" />
  <p> 한국 : <fmt:formatDate value="${now}" type="both" 
              dateStyle="full" timeStyle="full" />
  <p> 뉴욕 : <fmt:timeZone value="America/New_York">
           <fmt:formatDate value="${now}" type="both"
             dateStyle="full" timeStyle="full" />  
  </fmt:timeZone>  
  <p> 런던 : <fmt:timeZone value="Europe/London">
           <fmt:formatDate value="${now}" type="both"
             dateStyle="full" timeStyle="full" />  
  </fmt:timeZone>            
</body>
</html>