<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <form name="form1" action="a_response.jsp" method="post" >
      <p> �̸� <input type="text" name="irum">
      <p> ���̵� <input type="text" name="id">
      <p> ��й�ȣ <input type="password" name="pw">
      <p> �հݿ��� <input type="radio" name="passResult" value="�հ�"> �հ�
                <input type="radio" name="passResult" value="���հ�"> ���հ� 
      <p> �������� <input type="checkbox" name="subject1" value="����" > ����
                <input type="checkbox" name="subject2" value="����" > ����
                <input type="checkbox" name="subject3" value="����" > ����
   </form>
</body>
</html>