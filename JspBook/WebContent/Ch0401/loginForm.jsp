<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <h3> �̰��� loginForm.jsp �����Դϴ�</h3>
    <jsp:include page="serverForm.jsp">
       <jsp:param name="address" value='<%=java.net.URLEncoder.encode("����� ������") %>'/>
       <jsp:param name="school" value='<%=java.net.URLEncoder.encode("�ܱ���") %>'/>
       <jsp:param name="data" value='<%=java.net.URLEncoder.encode("������") %>' />
    </jsp:include>
  
</body>
</html>