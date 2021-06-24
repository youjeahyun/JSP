<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>서버 쪽 jsp request.jsp에서 폼에서 전송되어온  호출된 jsp file</title>
</head>
<body>
   <%
       String user_id = request.getParameter("user_id");
       String user_pw = request.getParameter("user_pw");
       String new_id = request.getParameter("new_id");
       String new_pw1 = request.getParameter("new_pw1");
       String new_pw2 = request.getParameter("new_pw2");
       String user_name = request.getParameter("user_name");
       String user_mail = request.getParameter("user_mail");
       String user_tel = request.getParameter("user_tel");
       String intro = request.getParameter("intro");
    %>
   <p> 아이디명 : <%= user_id %>
   <p> 비밀번호명 : <%= user_pw %>
   <p> 새로 가입한 아이디명 : <%= new_id %>
   <p> 새로 가입한 비밀번호 : <%= new_pw1 %>
   <p> 새로 가입한 비밀번호 확인  : <%= new_pw2 %>
   <p> 새로 가입한 회원명 : <%= user_name %>
   <p> 새로 가입한 메일주소 : <%= user_mail %>
   <p> 새로 가입한 전화번호 : <%= user_tel %>
   <p> 새로 가입한 인트로 : <%= intro %>                   
</body>
</html>