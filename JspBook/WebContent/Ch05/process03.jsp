<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>process3.jsp</title>
</head>
<body>
  <% request.setCharacterEncoding("euc-kr"); //�ѱ�ó�� 
     String name = request.getParameter("name");
  %>
  <p>
  �̸� : <%= name  %> <br>
  ��û ���� ���� : <%= request.getContentLength()%> <br>
  Ŭ���̾�Ʈ ���� ���� ��� : <%= request.getMethod() %> <br>
  ��û URI : <%= request.getRequestURI() %> <br>
  �����̸� : <%=request.getServerName() %> <br>
  ������Ʈ : <%=request.getServerPort() %> <br>  
       
</body>
</html>