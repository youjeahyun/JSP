<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>UI Test ����</title>

</head>
<body>
   <form action="uitest02_process.jsp"  method="post" scope = "page" >
      <fieldset>
         <legend> �α��� ȭ��    </legend>
         <ul>  <li> <label for="id"> ���̵� </label> 
                    <input type="text" name="id" id="id" required autofocus> 
               </li>
               <li> <label for="pw"> ��й�ȣ </label> 
                    <input type="password" name="pw" id="pw" required> 
               </li>
         </ul>
             <input type="submit" value="�α���" >
      </fieldset>
   
   </form>
</body>
</html>