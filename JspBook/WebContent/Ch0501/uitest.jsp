<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Է� �� ����� </title>
</head>
<body>
 <form action="uitest_process.jsp" method="post" scope="page" >
  <fieldset>
     <legend> ȸ������ </legend>
       <ul>
         <li>  <label for="id"> ���̵� </label>
               <input type="text" name="id" id="id" required autofocus placeholder="���̵� ���� ����"> * 
         </li>
         <li>  <label for="pw"> ��й�ȣ </label>
               <input type="password" name="password" id="pw" required placeholder="�����Ʈ�� �ִ� �κ�" > * 
         </li>
         <li> <label for="important"> �������� </label>
              <input type="range" name="im" id="important" min="0" max="100" value="50"> * �ּҰ� 0�� �ִ밪 100��
         </li>
         <li> <label for="mail"> �̸��� </label>
              <input type="email" name="email" id="mail" required> * 
         </li>
         <li>
             <label for="site"> �� �ּ�</label>
             <input type="url" name="website" id="site"> 
         </li>
         <li> 
             <label for="date"> ����ð�</label>
             <input type="number" name="hours" id="date" min="50" max="10000">
         </li>
         <li>
            <lable for="start_date"> ���� ��¥ </lable>
            <input type="date" name="sDate" id="start_date">
         </li>              
       </ul>
       
   </fieldset>
      <input type="submit" value="send" >
      
   
  </form>
</body>
</html>