<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>서버쪽 validation03_process.jsp 파일</title>
</head>
<body>
  <h3> 입력 자료 유효성 검사 통과 </h3>
  <%
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      String subject = request.getParameter("subject");
      out.println(id+"<br>");
      out.println(pw+"<br>");
      out.println(subject+"<br>");
  %>
</body>
</html>