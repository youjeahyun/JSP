<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� �� jsp request.jsp���� ������ ���۵Ǿ��  ȣ��� jsp file</title>
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
   <p> ���̵�� : <%= user_id %>
   <p> ��й�ȣ�� : <%= user_pw %>
   <p> ���� ������ ���̵�� : <%= new_id %>
   <p> ���� ������ ��й�ȣ : <%= new_pw1 %>
   <p> ���� ������ ��й�ȣ Ȯ��  : <%= new_pw2 %>
   <p> ���� ������ ȸ���� : <%= user_name %>
   <p> ���� ������ �����ּ� : <%= user_mail %>
   <p> ���� ������ ��ȭ��ȣ : <%= user_tel %>
   <p> ���� ������ ��Ʈ�� : <%= intro %>                   
</body>
</html>