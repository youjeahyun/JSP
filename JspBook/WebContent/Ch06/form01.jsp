<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Form processing</title>
</head>
<body>
   <h3> ȸ�� ���� </h3>
   <form action="process01.jsp" name="member" method="post">
      <p><label for="id">  ���̵�  </label>  <input type="text" id="id" name="id">
         <input type="button" value="���̵� �ߺ� �˻�" id="id" > 
      <p> <label> ��й�ȣ <input type="password" name="password" id="pw">   </label>
      <p> <label> �̸� <input type="text" name="name" id="irum"> </label>
      <p> <label> ����ó <input type="text" name="phone1" id="tel" maxlength="4" > - 
                       <input type="text" name="phone2" id="tel" maxlength="4" > -
                       <input type="text" name="phone3" id="tel" maxlength="4" >   </label>
      <p> <label> ���� <input type="radio" name="gender" value="����" checked>  ����
                     <input type="radio" name="gender" value="����" > ���� </label>
      <p> <label> ��� : ���� <input type="checkbox" name="hobby1" value="readingBook">
                   	      � <input type="checkbox" name="hobby2" value="sports">
                   	      ��ȭ <input type="checkbox" name="hobby3" value="movie">   </label>   
       <p> <input type="submit" value="�����ϱ�">  
           <input type="reset" value="�ٽ� ����">
           	                  
   </form>
</body>
</html>