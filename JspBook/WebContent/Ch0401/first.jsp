<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Action Tag</title>
</head>
<body>
   <h3> �������� first.jsp�Դϴ�</h3>
   <jsp:forward page="second.jsp">
      <jsp:param name="data" value='<%= java.net.URLEncoder.encode("������") %>' />
      <jsp:param name="dept" value='<%= java.net.URLEncoder.encode("����Ʈ�������") %>'/>
      <jsp:param name="age" value="20"/>
      <jsp:param name="phone" value="01087443334"/>
  
   </jsp:forward>
   <p> �� ���� include �׼� �±� ������ ��ġ�Դϴ�. 

</body>
</html>