<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>setProperty�׼��±װ� �ڹٺ��� Person���� ���̵�� �̸��� �����Ͽ� ����ϱ�
    setProperty�� �Ӽ����� name�� useBean�� id�� ���� �� 
                       property�� PersonŬ������ �޼ҵ� �߿��� setId()���� set������ id�� ���� ��
</title>
</head>
<body>
  <jsp:useBean id="person" class="ch04.dao.Person" scope="request" />
    <jsp:setProperty property="id" name="person" value="20201225"/>
    <jsp:setProperty property="name" name="person" value="������"/>
    <jsp:setProperty property="password" name="person" value="567567"/>
    <jsp:setProperty property="phone" name="person" value="78907890"/>
   <p> ���̵� : <%=person.getId() %>
   <p> �̸� : <%=person.getName() %>
   <p> ��й�ȣ : <%=person.getPassword() %>
   <p> ��ȭ��ȣ : <%=person.getPhone() %> 
</body>
</html>